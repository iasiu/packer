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
    path('ping/', views.Ping.as_view()),
    path('pass/<int:pack_id>/<int:receiver_id>/', views.PassPack.as_view()),
    path('', include(router.urls)),
]
