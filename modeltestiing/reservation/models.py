from django.db import models


class Reservation(models.Model):
    ResStatus = models.TextChoices('ResStatus', 'option confirmed cancelled')
    TitlesAllowed = models.TextChoices('TitlesAllowed', 'Mr Mrs Miss Ms Mstr')
    BookingTypes = models.TextChoices('BookingTypes', 'account creditcard')

    pnr = models.CharField(max_length=15, unique=True)

    #NameError: name 'option' is not defined
    # status = models.CharField(max_length=10, choices=ResStatus.choices, blank=False, default=option)

    status = models.CharField(max_length=10, choices=ResStatus.choices, blank=False, default="")
    created = models.DateTimeField(auto_now_add=True)
    createdby = models.CharField(max_length=255)
    updated = models.DateTimeField(auto_now_add=True)
    updatedby = models.CharField(max_length=255)

    agencyname = models.CharField(max_length=255)
    agencyid = models.PositiveIntegerField()

    # NameError: name 'option' is not defined
    # bookingtype = models.CharField(max_length=10, choices=BookingTypes.choices, blank=False, default=option)
    bookingtype = models.CharField(max_length=10, choices=BookingTypes.choices, blank=False, default="")

    shipcode = models.CharField(max_length=5, blank=False)
    shipname = models.CharField(max_length=100, blank=False)
    cruisecode = models.CharField(max_length=5, blank=False)
    cruisename = models.CharField(max_length=255, blank=False)
    cruiseembarkation = models.DateField()
    cruiseduration = models.PositiveSmallIntegerField(blank=False)
    cruiseitinerary = models.JSONField()
    ratecode = models.CharField(max_length=5, blank=False)
    ratename = models.CharField(max_length=255, blank=False)
    ratepricing = models.JSONField()
    cabincode = models.CharField(max_length=5)
    cabinname = models.CharField(max_length=100)
    cancellationpolicy = models.JSONField()
    currency = models.CharField(max_length=3)
    totalprice = models.DecimalField(max_digits=15, decimal_places=3)

    paymentschedule = models.JSONField()
    nextpaymentdue = models.DateField()
    nextpaymentoutstanding = models.DecimalField(max_digits=15, decimal_places=3)
    transactions = models.JSONField()
    totalpaid = models.DecimalField(max_digits=15, decimal_places=3)

    leadtitle = models.CharField(max_length=5, choices=TitlesAllowed.choices, blank=False)
    leadgivenname = models.CharField(max_length=100, blank=False)
    leadlastname = models.CharField(max_length=100, blank=False)
    leademail = models.EmailField(max_length=255)
    leadphone = models.CharField(max_length=50)


class Guests(models.Model):
    TitlesAllowed = models.TextChoices('TitlesAllowed', 'Mr Mrs Miss Ms Mstr')
    GuestTypes = models.TextChoices('GuestTypes', 'adult child infant senior')

    booking = models.ForeignKey(Reservation, on_delete=models.PROTECT)
    leadpassenger = models.BooleanField(default=False)
    title = models.CharField(max_length=5, choices=TitlesAllowed.choices, blank=False)
    givenname = models.CharField(max_length=100, blank=False)
    lastname = models.CharField(max_length=100, blank=False)
    dateofbirth = models.DateField(max_length=10, choices=GuestTypes.choices, blank=False)
    ageontravel = models.PositiveSmallIntegerField()
    nationality = models.CharField(max_length=2)
    language = models.CharField(max_length=7)

    address = models.JSONField()
    city = models.CharField(max_length=100)
    state = models.CharField(max_length=100)
    country = models.CharField(max_length=2)

    phone = models.CharField(max_length=50)
    email = models.EmailField(max_length=255)

    request = models.TextField()

    documentation = models.JSONField()
    pricing = models.JSONField()