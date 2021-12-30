from django.db import models

class DeliveryCompany(models.Model):
    name = models.CharField(max_length=200)
    
    def __str__(self):
        return '{}'.format(self.name)
    
    class Meta:
        verbose_name = 'Delivery company'
        verbose_name_plural = 'Delivery companies'
        ordering = ['name']
    
class Sender(models.Model):
    name = models.CharField(max_length=200)
    city = models.CharField(max_length=200)
    addressLine = models.CharField(max_length=200)
    postCode = models.CharField(max_length=20)
    
    def __str__(self):
        return '{}'.format(self.name)
    
    class Meta:
        verbose_name = 'Sender'
        verbose_name_plural = 'Senders'
        ordering = ['name']

class Receiver(models.Model):
    name = models.CharField(max_length=200)
    emailAddress = models.CharField(max_length=200)
    phoneNumber = models.CharField(max_length=20, blank=True)
    officeNumber = models.CharField(max_length=20, blank=True)
    
    def __str__(self):
        return '{}, {}'.format(self.name, self.emailAddress)
    
    class Meta:
        verbose_name = 'Receiver'
        verbose_name_plural = 'Receivers'
        ordering = ['name']
    
class Pack(models.Model):
    barcode = models.CharField(max_length=200, unique=True)
    deliveryDate = models.DateTimeField(auto_now_add=True, blank=True)
    passDate = models.DateTimeField(blank=True, null=True)
    deliveryCompany = models.ForeignKey(DeliveryCompany, on_delete=models.PROTECT, related_name='packs')
    sender = models.ForeignKey(Sender, on_delete=models.PROTECT, related_name='packs')
    receiver = models.ForeignKey(Receiver, on_delete=models.PROTECT, related_name='packs')
    comment = models.CharField(max_length=200, blank=True)
    
    def __str__(self):
        return 'For {}, {}'.format(self.receiver.name, self.deliveryDate)
    
    class Meta:
        verbose_name = 'Package'
        verbose_name_plural = 'Packages'
        ordering = ['deliveryDate']
