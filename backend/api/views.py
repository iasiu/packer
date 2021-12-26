from rest_framework import viewsets, permissions
from rest_framework.views import APIView
from rest_framework.response import Response
from django.shortcuts import get_object_or_404
from datetime import datetime
from django.http import HttpResponseForbidden

from api import models
from api import serializers

class Ping(APIView):
    def get(self, _):
        return Response({'ping': 'pong'})

class DeliveryCompanyViewSet(viewsets.ReadOnlyModelViewSet):
    queryset = models.DeliveryCompany.objects.all()
    serializer_class = serializers.DeliveryCompanySerializer
    permission_classes = [permissions.IsAuthenticated]

class SenderViewSet(viewsets.ModelViewSet):
    queryset = models.Sender.objects.all()
    serializer_class = serializers.SenderSerializer
    permission_classes = [permissions.IsAuthenticated]

class ReceiverViewSet(viewsets.ModelViewSet):
    queryset = models.Receiver.objects.all()
    serializer_class = serializers.ReceiverSerializer
    permission_classes = [permissions.IsAuthenticated]

class PackViewSet(viewsets.ModelViewSet):
    queryset = models.Pack.objects.all()
    serializer_class = serializers.PackSerializer
    permission_classes = [permissions.IsAuthenticated]

class PassPack(APIView):
    def get(self, _, pack_id, receiver_id):
        pack = get_object_or_404(models.Pack, pk=pack_id)
        if pack.receiver == None:
            receiver = get_object_or_404(models.Receiver, pk=receiver_id)
            
            pack.receiver = receiver
            pack.passDate = datetime.now()
            pack.save()
            return Response(serializers.PackSerializer(pack).data)
        else:
            message = "Pack with id {}, already has a receiver with id {}".format(pack_id, pack.receiver.id)
            return HttpResponseForbidden(message)
        