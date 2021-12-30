from rest_framework import viewsets, permissions
from rest_framework.views import APIView
from rest_framework.response import Response
from django.utils import timezone
from django.http import HttpResponseBadRequest, HttpResponseNotFound

from api import models
from api import serializers
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
    read_serializer_class = serializers.PackReadSerializer
    permission_classes = [permissions.IsAuthenticated]
    
    def list(self, request, *args, **kwargs): 
        queryset = self.filter_queryset(self.get_queryset())

        page = self.paginate_queryset(queryset)
        if page is not None:
            serializer = self.read_serializer_class
            return self.get_paginated_response(serializer.data)

        serializer = self.read_serializer_class(queryset, many=True)
        return Response(serializer.data)
    
    def retrieve(self, request, *args, **kwargs):
        try:   
            instance = self.get_object()
            serializer = self.read_serializer_class(instance)
            return Response(serializer.data)
        except Exception:
            return HttpResponseNotFound('Couldn\'t find this package.')
    
class PassPack(APIView):
    def get(self, _, pack_barcode):
        try:
            pack = models.Pack.objects.get(barcode=pack_barcode)
            if pack.passDate != None:
                return HttpResponseBadRequest('Package with this barcode was already passed.')
            pack.passDate = timezone.now()
            pack.save()
            return Response(serializers.PackReadSerializer(pack).data)
        except models.Pack.DoesNotExist:
            return HttpResponseNotFound('Couldn\'t find a package with this barcode.')
        except models.Pack.MultipleObjectsReturned:
            return HttpResponseBadRequest('Found more than one package with this barcode, report this to admin.')
        except Exception as e:
            print(e)
            return HttpResponseBadRequest('Encountered unknown error, please try again later.')
            