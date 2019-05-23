from django.contrib import admin

# Register your models here.
from .models import Lms

class LmsAdmin(admin.ModelAdmin):
    list_display = ["__unicode__", "from_date", "to_date", "reason"]

    class Meta:
        model = Lms


admin.site.register(Lms, LmsAdmin)