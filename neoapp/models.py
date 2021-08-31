from django.db import models
from django.db.models import Avg, Count, Min, Sum
from django.urls import reverse
# Create your models here.
from django.utils.translation import ugettext_lazy as _
from django.contrib.auth.models import Permission
from django.contrib import messages
from random import randint
import requests
import urllib3
import json
import logging
logger = logging.getLogger()
import os

class Customer (models.Model):
    UF = (
        ('SP', 'São Paulo'),
        ('RJ', 'Rio de Janeiro'),
        ('PR', 'Paraná'),
        ('MG', 'Minas Gerais'),
    )



    creation   = models.DateTimeField(auto_now=True)
    name       = models.CharField(blank=False,  max_length=250,verbose_name=_('name'))
    cep        = models.CharField(blank=False, max_length=15,verbose_name=_('zip_code'))
    CPF        =  models.CharField(blank=False, max_length=20,verbose_name=_('CPF'))
    logradouro =  models.CharField(blank=False, max_length=250, verbose_name=_('address'))
    bairro     =  models.CharField(blank=False, max_length=250, default="Centro", verbose_name=_('neighborhood'))
    numero     = models.CharField(blank=False,max_length=20, verbose_name=_('number'))
    cidade     = models.CharField(max_length=200,blank=False, default="São Paulo", verbose_name=_('city'))
    UF         = models.CharField(max_length=2, default='SP', blank=False, choices=UF, verbose_name=_('UF'))
    complemento= models.CharField(max_length=250, blank=True, null=True, verbose_name=_('addtional'))


    @property
    def cards(self):
        return  PayInfo.objects.filter(costumer=self)

    @property
    def vendas(self):
        return Vendas.objects.filter(costumer=self)


    @property
    def cpf_view(self):
        cpf_view = self.CPF
        


        #return exposed_request.user.get_all_permissions()
        if exposed_request.user.has_perm('neoapp.detokenize_cpf'):


            data = {"tokengroup": "demo.detoken", "token": self.CPF, "tokentemplate": "CPF_CLEAR"}
            print (F"detokenize CPF clear: {data}")

            http = requests
            res = http.post(f"https://{os.environ['VTS_URL']}/vts/rest/v2.0/detokenize", data=json.dumps(data),
                            auth=('demo.detoken', f"{os.environ['TOKEN_PASS']}"), verify=False)

            response = json.loads(res.text)
            logger.info(F"detokenize: {data}")
            return response['data']


        else:
            data = {"tokengroup": "demo.token", "token": self.CPF, "tokentemplate": "CPF"}
            print (F"detokenize - cpf mask : {data}")

            http = requests
            res = http.post(F"https://{os.environ['VTS_URL']}/vts/rest/v2.0/detokenize", data=json.dumps(data),
                            auth=('demo.token', f"{os.environ['TOKEN_PASS']}"), verify=False)

            
            logger.info(F"detokenize: {data}")
            response = json.loads(res.text)

            return response['data']





    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('costumer_list')



    def save(self, *args, **kwargs):

        if  not self.id:


            try:

                data = {"tokengroup" : "demo.token" ,"data" : self.CPF, "tokentemplate" : "CPF"}

                http = requests
                res = http.post(f"https://{os.environ['VTS_URL']}/vts/rest/v2.0/tokenize",data=json.dumps(data),
                             auth=('demo.token', f"{os.environ['TOKEN_PASS']}"), verify=False)

                response = json.loads(res.text)
                self.CPF = response['token']



            except (Exception) as e:
                messages.error(exposed_request,_("tokenize_error: ") + str(e))
                pass
        else:
            pass


        return super(Customer, self).save(*args, **kwargs)


    class Meta:
        db_table = '"costumer"'
        ordering  = ['-creation', 'name']




class PayInfo(models.Model):
    creation = models.DateTimeField(auto_now=True)
    name = models.CharField(blank=False, max_length=250)
    costumer = models.ForeignKey(Customer, on_delete=models.CASCADE)
    card   =  models.CharField(max_length=16, blank=False,null=False)
    dv     = models.CharField(blank=False, null=False, max_length=3)

    def save(self, *args, **kwargs):

        if not self.id:

            try:

                data = {"tokengroup": "demo.token.cc", "data": self.card, "tokentemplate": "cc"}

                http = requests
                res = http.post(f"https://{os.environ['VTS_URL']}/vts/rest/v2.0/tokenize", data=json.dumps(data),
                                auth=('demo.token', f"{os.environ['TOKEN_PASS']}"), verify=False)

                response = json.loads(res.text)
                logger.info(F"detokenize cpf: {data}")

                self.card = response['token']



            except (Exception) as e:
                messages.error(exposed_request, _("tokenize_error: ") + str(res.text))
                pass
        else:
            pass

        return super(PayInfo, self).save(*args, **kwargs)







    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('paynfo_list', kwargs={'pk': self.costumer.id})


    @property
    def card_view(self):



        
    
        if exposed_request.user.has_perm('neoapp.detokenize_card'):
            "Pode ver em clear Text"
            data = {"tokengroup": "demo.detoken.cc", "token": self.card, "tokentemplate": "cc_clear"}
            print (F"detokenize - cc : {data}")

            http = requests
            res = http.post(f"https://{os.environ['VTS_URL']}/vts/rest/v2.0/detokenize", data=json.dumps(data),
                            auth=('demo.detoken', f"{os.environ['TOKEN_PASS']}"), verify=False)

            response = json.loads(res.text)
            #return res.text
            
            return response['data']

        else:
            data = {"tokengroup": "demo.token.cc", "token": self.card, "tokentemplate": "cc"}
            print (F"detokenize - cc : {data}")

            http = requests
            res = http.post(f"https://{os.environ['VTS_URL']}/vts/rest/v2.0/detokenize", data=json.dumps(data),
                            auth=('demo.token.cc', f"{os.environ['TOKEN_PASS']}"), verify=False)

            response = json.loads(res.text)
            print (F"detokenize: {data}")
            #return res.text
            return response['data']


    @property
    def dv_view(self):
        


        # return exposed_request.user.get_all_permissions()
        if exposed_request.user.has_perm('neoapp.detokenize_dv'):
            return  randint(1,999)

        else:
            return "XXX"


    class Meta:
        db_table = '"payinfo"'
        ordering = ['-creation', 'costumer','name']


class VendasStatus(models.Model):

    name = models.CharField(blank=False, max_length=250)


    def __str__(self):
        return self.name

    class Meta:
        db_table = '"vendas_status"'



class Categoria(models.Model):

    name = models.CharField(blank=False, max_length=250)


    def __str__(self):
        return self.name

    class Meta:
        db_table = '"categorias"'


class Tags(models.Model):

    name = models.CharField(blank=False, max_length=250)


    def __str__(self):
        return self.name

    class Meta:
        db_table = '"Tags"'





class Produtos(models.Model):
    creation = models.DateTimeField(auto_now=True)
    name = models.CharField(blank=False, max_length=250)
    categoria = models.ForeignKey(Categoria, on_delete=models.CASCADE)
    preco     = models.FloatField(blank=False, default=10.0)



    def __str__(self):
        return self.name

    class Meta:
        db_table = '"produtos"'






class ProdutoTags(models.Model):
    produto = models.ForeignKey(Produtos, on_delete=models.CASCADE)
    tags = models.ForeignKey(Tags, on_delete=models.CASCADE)


    class Meta:
        db_table = '"produto_tags"'





class Vendas(models.Model):
    creation = models.DateTimeField(auto_now=True)
    costumer = models.ForeignKey(Customer, on_delete=models.CASCADE)
    card     = models.ForeignKey(PayInfo, on_delete=models.CASCADE)
    status   = models.ForeignKey(VendasStatus, on_delete=models.CASCADE)
    #produtos  = models.ManyToManyField(Produtos, through='ProdutoVendas', through_fields=('vendas','produtos'), related_name='produtos_venda')
    @property

    def produtos(self):
        return ProdutoVendas.objects.filter(vendas=self)

    def total(self):
        return ProdutoVendas.objects.filter(vendas=self).annotate(total=Sum('valor'))[0].total



    class Meta:
        db_table = '"vendas"'
        ordering = ['-creation', 'costumer','status']



class ProdutoVendas(models.Model):
    vendas = models.ForeignKey(Vendas, on_delete=models.CASCADE)
    produtos = models.ForeignKey(Produtos, on_delete=models.CASCADE)

    valor   = models.FloatField(blank=False, default=0)


    class Meta:
        db_table = '"item_vendas"'
        ordering = ['vendas', '-produtos', '-valor']

