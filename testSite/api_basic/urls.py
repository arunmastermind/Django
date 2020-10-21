from django.urls import path
from .views import index, article_list, article_detail, article_list2, article_detail2, ArticleAPIView1, ArticleDetails1, GenericAPIView

urlpatterns = [
    path('', index, name='index'),
    path('article2/', article_list2, name='article_list2'),
    path('detail2/<int:pk>/', article_detail2, name='article_detail2'),
    path('article1/', article_list, name='article_list'),
    path('detail1/<int:pk>/', article_detail, name='article_detail'),
    path('article/', ArticleAPIView1.as_view(), name='article_api_view'),
    path('detail/<int:id>/', ArticleDetails1.as_view(), name='detail_api_view'),
    path('generic/article/', GenericAPIView.as_view(), name='generic_article_view'),
    path('generic/article/<int:id>/', GenericAPIView.as_view(), name='generic_detail_view'),
]
