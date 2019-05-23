from django import forms

from .models import Lms

class LmsForm(forms.ModelForm):
    class Meta:
        model = Lms
        # widgets = {
        #     'from_date': forms.DateTimeInput(attrs={'class':'datetime-input'}),
        #     'to_date': forms.DateTimeInput(attrs={'class': 'datetime-input'}),
        # }
        fields = ['from_date', 'to_date', 'working_days', 'reason']
