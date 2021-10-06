from django.urls import path

from . import views

urlpatterns = [
    path('ep2/', views.EP1.as_view()),
]
