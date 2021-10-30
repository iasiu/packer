from django.contrib.auth.models import User, Group
from rest_framework import viewsets, permissions
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response

class Ping(APIView):
    def get(self, request):
        return Response({'ping': 'pong'})