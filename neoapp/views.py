
from django.views.generic import ListView
from django.views.generic import DetailView
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.urls import reverse, reverse_lazy
from django.contrib.messages.views import SuccessMessageMixin
from django.contrib import messages
from django.utils.translation import ugettext_lazy as _
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.auth.mixins import PermissionRequiredMixin






from django.db.models import Q
from django.http import  request, response



from django.shortcuts import get_object_or_404

from neoapp.models import *

"""
@file: This file is used to process any request about clients
"""





class CostumerList(LoginRequiredMixin,SuccessMessageMixin,ListView):
  """
  list Costumers
  """

  model = Customer

  template_name = 'neoapp/costumers.html'
  paginate_by = 50







  def get_queryset(self):

      if 'search' in self.request.GET:

          if self.request.GET['field'] =='name':
              objects = Customer.objects.filter(Q(name__icontains=self.request.GET['search']))

          elif self.request.GET['field'] =='CPF':
              if self.request.user.has_perm('neoapp.detokenize_cpf'):
                  data = {"tokengroup": "demo.tokem", "data": self.request.GET['search'], "tokentemplate": "CPF"}

                  http = requests
                  res = http.post('https://vts.neotel.com.br/vts/rest/v2.0/tokenize', data=json.dumps(data),
                                  auth=('demo.tokem', '!3BananaAmassada'), verify=False)

                  response = json.loads(res.text)
                  messages.success(self.request, res.text)

                  objects = Customer.objects.filter(Q(CPF__contains=response['token']))

              else:
                  messages.error(self.request, _("not_permited"))
                  objects = Customer.objects.filter(Q(CPF='0B'))

      else:

          objects = Customer.objects.all()

      return objects







class CostumerDetail (LoginRequiredMixin,DetailView ):
  model = Customer
  template_name = 'neoapp/customer_detail.html'

  def get_context_data(self, **kwargs):
    context = super().get_context_data(**kwargs)

    return context



class CostumerCreate(LoginRequiredMixin,SuccessMessageMixin,PermissionRequiredMixin,CreateView):
    model = Customer
    template_name = 'neoapp/customer_create.html'
    fields = ('name', 'cep', 'CPF', 'logradouro', 'bairro', 'numero','cidade','UF', 'complemento')
    success_message = _("costumer_successfully_created")
    permission_required = "neoapp.add_costumer"






class CostumerUpdate(LoginRequiredMixin,SuccessMessageMixin,UpdateView):
      model = Customer
      template_name = 'neoapp/customer_create.html'
      success_message = _("costumer_successfully_updated")


      def dispatch(self, request, *args, **kwargs):

          if request.user.has_perm('neoapp.change_costumer'):
              self.fields = ('name', 'CPF','cep',  'logradouro', 'bairro', 'numero', 'cidade', 'UF', 'complemento')
          else:
              self.fields = ('name', 'cep',  'logradouro', 'bairro', 'numero', 'cidade', 'UF', 'complemento')

          return super().dispatch(request, *args, **kwargs)






class PayinfoList(LoginRequiredMixin,SuccessMessageMixin,ListView):
  """
  list payment info
  """

  model = PayInfo


  template_name = 'neoapp/payinfo_list.html'
  paginate_by = 100

  def get_queryset(self):
      return Customer.objects.filter(pk=self.kwargs['pk'])






class PayInfoCreate(LoginRequiredMixin,PermissionRequiredMixin,SuccessMessageMixin,CreateView):
    model = PayInfo
    template_name = 'neoapp/payinfo_create.html'
    fields = ('name', 'card', 'dv')
    success_message =  _("payinfo_successfully_created")
    permission_required = "neoapp.add_payinfo"
    permission_denied_message = _('deny_create_card')

    def form_valid(self, form):
        form.instance.costumer_id = Customer.objects.get(pk=self.kwargs['pk']).id
        return super(PayInfoCreate, self).form_valid(form)







class PayInfoUpdate(LoginRequiredMixin,SuccessMessageMixin,UpdateView):
      model = PayInfo
      template_name = 'neoapp/payinfo_create.html'

      success_message = _("payinfo_successfully_updated")








      def dispatch(self, request, *args, **kwargs):

          if request.user.has_perm('neoapp.change_payinfo'):


              self.fields = ['name']


          else:
              self.fields = ['name']

          return super().dispatch(request, *args, **kwargs)



class PayInfoDelete(LoginRequiredMixin,PermissionRequiredMixin,SuccessMessageMixin,DeleteView):
      model = PayInfo
      template_name = 'neoapp/payinfo_delete.html'
      success_message = _("payinfo_successfully_deleted")
      permission_required = "neoapp.delete_payinfo"
      permission_denied_message = _("forbidden_delete_card")

      def get_success_url(self):
          # Assuming there is a ForeignKey from Comment to Post in your model
          costumer = self.object.costumer

          messages.success(self.request, _("payinfo_successfully_deleted"))
          return reverse_lazy('paynfo_list', kwargs={'pk': costumer.id})



