from rest_framework import serializers
from api import models

class DeliveryCompanySerializer(serializers.ModelSerializer):
    class Meta:
        model = models.DeliveryCompany
        fields = ['id', 'name']
        
class SenderSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Sender
        fields = ['id', 'name', 'city', 'addressLine', 'postCode', 'comment']
        
class ReceiverSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Receiver
        fields = ['id', 'name', 'emailAddress', 'phoneNumber', 'officeNumber']

class PackSerializer(serializers.ModelSerializer): 
    class Meta:
        model = models.Pack
        fields = ['id', 'barcode', 'deliveryDate', 'passDate', 'deliveryCompany', 'sender', 'receiver']
        
class PackReadSerializer(serializers.ModelSerializer):
    deliveryCompany = DeliveryCompanySerializer(read_only=True)
    sender = SenderSerializer(read_only=True)
    receiver = ReceiverSerializer(read_only=True)
        
    class Meta:
        model = models.Pack
        fields = ['id', 'barcode', 'deliveryDate', 'passDate', 'deliveryCompany', 'sender', 'receiver']