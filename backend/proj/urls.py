from django.contrib import admin
from django.urls import path, include
from api import views
from rest_framework import routers

router = routers.DefaultRouter()
router.register(r'deliveryCompanies', views.DeliveryCompanyViewSet)
router.register(r'senders', views.SenderViewSet)
router.register(r'receivers', views.ReceiverViewSet)
router.register(r'packs', views.PackViewSet)

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api-auth/', include('rest_framework.urls')),
    path('pass/<str:pack_barcode>/', views.PassPack.as_view()),
    path('', include(router.urls)),
]
