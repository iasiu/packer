from django.contrib import admin

from api import models

admin.site.register(models.DeliveryCompany)
admin.site.register(models.Sender)
admin.site.register(models.Receiver)
admin.site.register(models.Pack)