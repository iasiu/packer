from django.contrib.auth.models import User, Group
from rest_framework import viewsets, permissions
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.decorators import action

from api import models
from api import serializers

class Ping(APIView):
    def get(self, request):
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