from django.contrib import admin
from .models import Article

# Register your models here.
admin.site.register(Article)

admin.site.site_header = "Arun's Test Site Admin Panel"
admin.site.index_title = 'Arun'
admin.site.site_title = 'Admin'
