from __future__ import unicode_literals
from datetime import datetime, timedelta
from django.db import models

class Lms(models.Model):
    from_date = models.DateField(("From_Date"), blank=False, null=False, default=datetime.now()+timedelta(days=14))
    to_date = models.DateField(("To_Date"), blank=False, null=False, default=datetime.now()+timedelta(days=15))
    working_days = models.IntegerField(blank=False, null=False, default=1)
    reason = models.TextField(blank=False, null=True)
    timestamp = models.DateTimeField(auto_now_add=True, auto_now=False)
    update = models.DateTimeField(auto_now_add=False, auto_now=True)

    def __unicode__(self):
		return self.working_days