from django.urls import path

from . import views

urlpatterns = [
    path('ep1/', views.EP1.as_view()),
]
