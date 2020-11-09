from django.db import models
from configuration.models import Sailings, Rate, Grade, Cabin


# Create your models here.
class Availability(models.Model):
    sailing = models.ForeignKey(Sailings, on_delete=models.CASCADE)
    rate = models.ForeignKey(Rate, on_delete=models.CASCADE)
    grade = models.ForeignKey(Grade, on_delete=models.CASCADE)
    qty = models.PositiveSmallIntegerField()


class CabinAvailability(models.Model):
    avail_status = (
        ('AvailableStatus', 'AvailableStatus'),
        ('open', 'open'),
        ('booked', 'booked'),
        ('hold', 'hold'),
        ('grouphold', 'grouphold'),
        ('released', 'released'),
    )
    # AvailableStatus = models.TextChoices('AvailableStatus', 'open', 'booked', 'hold', 'grouphold', 'released')
    AvailableStatus = models.CharField('AvailableStatus', max_length=20, choices=avail_status)

    sailing = models.ForeignKey(Sailings, on_delete=models.CASCADE)
    grade = models.ForeignKey(Grade, on_delete=models.CASCADE)
    cabin = models.ForeignKey(Cabin, on_delete=models.CASCADE)
    # status = models.CharField(max_length=10, choices=AvailableStatus.choices, default=open)
    status = models.CharField(max_length=15, choices=avail_status, default=open)
    holdtime = models.DateTimeField(auto_now_add=True)

