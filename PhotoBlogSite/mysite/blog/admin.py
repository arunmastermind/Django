from django.contrib import admin

# Register your models here.
from .models import SignUp, Manager, Profile
from .forms import SignUpForm


class SignUpAdmin(admin.ModelAdmin):
	list_display = ["__unicode__", "last_name", "email", "timestamp", "update"]
	class Meta:
		model = SignUp
			

admin.site.register(SignUp, SignUpAdmin)


class ManagerAdmin(admin.ModelAdmin):
	list_display = ["__unicode__", "manager"]

	class Meta:
		model = Manager


admin.site.register(Manager, ManagerAdmin)

class ProfileAdmin(admin.ModelAdmin):
	list_display = ["first_name", "last_name", "email", "manager"]

	class Meta:
		model = Profile


admin.site.register(Profile, ProfileAdmin)