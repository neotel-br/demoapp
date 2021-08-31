from django.contrib import admin

import neoapp.models

# Register your models here.

admin.site.register(neoapp.models.Customer)
admin.site.register(neoapp.models.PayInfo)
admin.site.register(neoapp.models.Produtos)
admin.site.register(neoapp.models.Tags)
admin.site.register(neoapp.models.Categoria)
admin.site.register(neoapp.models.Vendas)
admin.site.register(neoapp.models.ProdutoVendas)
admin.site.register(neoapp.models.ProdutoTags)
admin.site.register(neoapp.models.VendasStatus)





