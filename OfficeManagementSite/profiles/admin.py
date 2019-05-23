from django.contrib import admin

# Register your models here.
from .models import Manager, Profile

class ManagerAdmin(admin.ModelAdmin):
    list_display = ["__unicode__", "manager", "email"]

    class Meta:
        model = Manager


admin.site.register(Manager, ManagerAdmin)


class ProfileAdmin(admin.ModelAdmin):
    list_display = ["__unicode__", "first_name", "last_name", "email", "manager"]

    class Meta:
        model = Profile


admin.site.register(Profile, ProfileAdmin)