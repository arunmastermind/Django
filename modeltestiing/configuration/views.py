from django.shortcuts import render
from rest_framework import status
from rest_framework import generics
from rest_framework.views import APIView
from rest_framework.response import Response
from .models import *
from .serializers import *


# Create your views here.
class CabinAttribute(APIView):

    def get_objects(self, id):
        try:
            return Cabinattribute.objects.get(id=id)
        except Cabinattribute.DoesNotExist:
            return Response(status=status.HTTP_4040_NOT_FOUND)

    def get_queryset(self, request):
        queryset = Cabinattribute.objects.all()
        ca_name = self.request.query_params.get('name', None)
        if ca_name is not None:
            queryset = queryset.filter(cabinattribute__name=ca_name)
        return queryset

    def get(self, request):
        id = self.request.query_params.get('id', None)
        if id is not None and id > 0:
            serializer = Cabinattribute(self.get_objects(id))
        else:
            serializer = Cabinattribute(self.get_queryset(request))
        return Response(serializer.data)

    def post(self, request):
        serializer = Cabinattribute(data=request.data)

        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def put(self, request):
        id = self.request.query_params.get('id', None)
        if id is not None and id > 0:
            serializer = Cabinattribute(self.get_objects(id), data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request):
        id = self.request.query_params.get('id', None)
        if id is not None and id > 0:
            self.get_objects(id).delete()
            return Response(status=status.HTTP_204_NO_CONTENT)