from rest_framework import serializers
from api import models

class DeliveryCompanySerializer(serializers.ModelSerializer):
    model = models.DeliveryCompany
    class Meta:
        model = models.DeliveryCompany
        fields = ['id', 'name']
        
class SenderSerializer(serializers.ModelSerializer):
    model = models.Sender
    class Meta:
        model = models.Sender
        fields = ['id', 'name', 'city', 'addressLine', 'postCode', 'comment']
        
class ReceiverSerializer(serializers.ModelSerializer):
    model = models.Receiver
    class Meta:
        model = models.Receiver
        fields = ['id', 'name', 'emailAddress', 'phoneNumber', 'officeNumber']
        
class PackSerializer(serializers.ModelSerializer):
    model = models.Pack
    class Meta:
        model = models.Pack
        fields = ['id', 'barcode', 'deliveryDate', 'passDate', 'deliveryCompany', 'sender', 'receiver']
