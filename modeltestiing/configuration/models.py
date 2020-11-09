from django.db import models
from datetime import date


class Cabinattribute(models.Model):
    name = models.CharField(max_length=100)
    code = models.CharField(max_length=5)
    guaranteedpriority = models.BooleanField(default=False)


class Category(models.Model):
    CatType = models.TextChoices('CatType', 'image ship grade rate cabin')
    name = models.CharField(max_length=100)
    availableto = models.CharField(blank=False, choices=CatType.choices, max_length=15)


class Age(models.Model):
    AgeCats = models.TextChoices('AgeCats', 'adult child infant senior')
    category = models.CharField(blank=False, choices=AgeCats.choices, max_length=15)
    value = models.PositiveSmallIntegerField()


class Imagesize(models.Model):
    ImageCats = models.TextChoices('ImageCats', 'small medium large')
    category = models.CharField(blank=False, choices=ImageCats.choices, max_length=15)
    width = models.PositiveSmallIntegerField()
    height = models.PositiveSmallIntegerField()


class Bedconfiguration(models.Model):
    name = models.CharField(max_length=100)
    code = models.CharField(max_length=5)

class Consortia(models.Model):
    name = models.CharField(max_length=100)
    code = models.CharField(max_length=5)

class Depositpolicy(models.Model):
    DepositType = (
        ('perpersonperday', 'Per Person Per Day'),
        ('percentage', 'Percentage'),
        ('perday', 'Per Day'),
        ('fixed', 'Fixed Value'),
    )
    name = models.CharField(max_length=100)
    daysbeforedeparture = models.PositiveSmallIntegerField()
    #type = models.CharField(blank=False, choices=DepositType.choices, max_length=10)
    type = models.CharField(blank=False, choices=DepositType, max_length=15)
    value = models.PositiveSmallIntegerField()


class Cancellationpolicy(models.Model):
    CanxType = (
        ('fixedfee', 'Fixed Fee'),
        ('percentage', 'Percentage'),
    )
    name = models.CharField(max_length=100)
    daysbeforedeparture = models.PositiveSmallIntegerField()
    #type = models.CharField(blank=False, choices=CanxType.choices, max_length=10)
    type = models.CharField(blank=False, choices=CanxType, max_length=15)
    value = models.PositiveSmallIntegerField()


class Market(models.Model):
    name = models.CharField(max_length=100)
    code = models.CharField(max_length=5, db_index=True)


class Optiontime(models.Model):
    UnitTypes = (
        ('hours', 'Hours'),
        ('days', 'Days'),
    )
    #unit = models.CharField(blank=False, choices=UnitTypes.choices, max_length=10)
    unit = models.CharField(blank=False, choices=UnitTypes, max_length=15)
    value = models.PositiveSmallIntegerField()


class Diningseating(models.Model):
    name = models.CharField(max_length=100)
    code = models.CharField(max_length=5, db_index=True)
    starttime = models.TimeField()
    endtime = models.TimeField()
    validfrom = models.DateField(default=date.today)
    validto = models.DateField()


class Diningtable(models.Model):
    name = models.CharField(max_length=100)
    code = models.CharField(max_length=5, db_index=True)


class Cabinholdduration(models.Model):
    UnitTypes = (
        ('minutes', 'Minutes'),
        ('hours', 'Hours'),
    )
    #unit = models.CharField(blank=False, choices=UnitTypes.choices, max_length=10)
    unit = models.CharField(blank=False, choices=UnitTypes, max_length=15)
    value = models.PositiveSmallIntegerField()


class Groupreview(models.Model):
    reviewdaysbeforedeparture = models.PositiveSmallIntegerField()
    paymentdaysbeforedeparture = models.PositiveSmallIntegerField()
    email = models.EmailField(max_length=255)
    mingradepercentage = models.PositiveSmallIntegerField()
    maxgradepercentage = models.PositiveSmallIntegerField()


class Ship(models.Model):
    published = models.BooleanField(default=False)
    name = models.CharField(max_length=100)
    code = models.CharField(max_length=5, db_index=True)
    length = models.PositiveIntegerField()
    size = models.PositiveIntegerField()
    standardcapacity = models.PositiveIntegerField()
    totalcapacity = models.PositiveIntegerField()
    totalcabins = models.PositiveIntegerField()
    descriptions = models.JSONField()


class Grade(models.Model):
    GradeCat = models.TextChoices('GradeCats', 'inside outside balcony suite')

    published = models.BooleanField(default=False)
    ship = models.ForeignKey(Ship, on_delete=models.CASCADE)
    name = models.CharField(max_length=100)
    code = models.CharField(max_length=5, db_index=True)
    description = models.TextField()
    category = models.CharField(blank=False, choices=GradeCat.choices, max_length=15)
    cabinquantity = models.PositiveSmallIntegerField()
    guaranteed = models.BooleanField(default=False)
    validfrom = models.DateField(default=date.today)
    validto = models.DateField()


class Cabin(models.Model):
    Positions = models.TextChoices('Positions', 'forward midship aft')
    Locations = models.TextChoices('Locations', 'port starboard')

    published = models.BooleanField(default=False)
    number = models.CharField(max_length=5, unique=True)
    position = models.CharField(max_length=15, choices=Positions.choices, blank=False)
    location = models.CharField(max_length=15, choices=Locations.choices, blank=False)
    attr = models.ManyToManyField(Cabinattribute)
    bedconfig = models.ManyToManyField(Bedconfiguration)


class Port(models.Model):
    name = models.CharField(max_length=100)
    code = models.CharField(max_length=5, db_index=True)
    latitude = models.CharField(max_length=10)
    longitude = models.CharField(max_length=10)
    tender = models.BooleanField(default=False)


class Cruise(models.Model):
    published = models.BooleanField(default=False)
    name = models.CharField(max_length=100)
    code = models.CharField(max_length=5, db_index=True)
    ship = models.ForeignKey(Ship, on_delete=models.PROTECT)
    nights = models.PositiveSmallIntegerField()
    seadays = models.PositiveSmallIntegerField()
    descriptions = models.JSONField()


class CruiseItinerary(models.Model):
    cruise = models.ForeignKey(Cruise, on_delete=models.CASCADE)
    day = models.PositiveSmallIntegerField()
    port = models.ForeignKey(Port, on_delete=models.PROTECT)
    extradescription = models.TextField()
    arrivetime = models.TimeField()
    departtime = models.TimeField()


class Cruisefeesandtaxes(models.Model):
    cruise = models.ForeignKey(Cruise, on_delete=models.CASCADE)
    name = models.CharField(max_length=100)
    value = models.DecimalField(max_digits=10, decimal_places=3)


class Sailings(models.Model):
    cruise = models.ForeignKey(Cruise, on_delete=models.CASCADE)
    date = models.DateField()
    #gtfpercentage = models.FloatField(max_digits=5, decimal_places=2)
    gtfpercentage = models.DecimalField(max_digits=5, decimal_places=2)

class Agency(models.Model):
    AccountTypes = (
        ('creditcardonly', 'Credit Card Only'),
        ('creditaccount', 'Credit Account'),
        ('both', 'Both Card and Account'),
    )

    name = models.CharField(max_length=100)
    email = models.EmailField(max_length=100)
    telephone = models.CharField(max_length=20)

    '''
    ERRORS:
configuration.Agency.consortia: (fields.E304) Reverse accessor for 'Agency.consortia' clashes with reverse accessor for 'Agency.market'.
	HINT: Add or change a related_name argument to the definition for 'Agency.consortia' or 'Agency.market'.
configuration.Agency.market: (fields.E304) Reverse accessor for 'Agency.market' clashes with reverse accessor for 'Agency.consortia'.
	HINT: Add or change a related_name argument to the definition for 'Agency.market' or 'Agency.consortia'.
    '''
    #consortia = models.ForeignKey(Consortia, on_delete=models.PROTECT)

    #You are trying to add a non-nullable field 'commissionlevel' to agency without a default; we can't do that (the database needs something to populate existing rows).
    commissionlevel = models.DecimalField(max_digits=5, decimal_places=2, default=-1)

    #You are trying to add a non-nullable field 'market' to agency without a default; we can't do that (the database needs something to populate existing rows).
    market = models.ForeignKey(Consortia, on_delete=models.PROTECT, default=-1)
    accounttype = models.CharField(max_length=20, choices=Cabin.Locations.choices, blank=False)
    creditlimit = models.DecimalField(max_digits=20, decimal_places=3)
    username = models.CharField(max_length=100, blank=False, unique=True)
    password = models.CharField(max_length=100, blank=False)

class Rate(models.Model):
    Restrictions = (
        ('group', 'Group'),
        ('senior', 'Senior'),
        ('interline', 'Interline'),
        ('ems', 'EMS'),
        ('military', 'Military'),
        ('nett', 'Nett'),
    )

    published = models.BooleanField(default=False)
    name = models.CharField(max_length=100)
    code = models.CharField(max_length=5, db_index=True)
    market = models.ForeignKey(Market, on_delete=models.PROTECT)
    currency = models.CharField(max_length=3)
    validfrom = models.DateField(default=date.today)
    validto = models.DateField()
    #commissionoverride = models.FloatField(max_digits=5, decimal_places=2)
    commissionoverride = models.DecimalField(max_digits=5, decimal_places=2)
    #restriction = models.CharField(max_length=10, choices=Locations.choices, blank=True)
    restriction = models.CharField(max_length=15, choices=Cabin.Locations.choices, blank=True)
    cancellationpolicy = models.ManyToManyField(Cancellationpolicy)
    agency = models.ManyToManyField(Agency, blank=True)
    descriptions = models.JSONField()


class Ratepricing(models.Model):
    rate = models.ForeignKey(Rate, on_delete=models.PROTECT)
    grade = models.ForeignKey(Grade, on_delete=models.PROTECT)
    firstpassengerprice = models.DecimalField(max_digits=20, decimal_places=3)
    secondpassengerprice = models.DecimalField(max_digits=20, decimal_places=3)
    thirdpassengerprice = models.DecimalField(max_digits=20, decimal_places=3)
    fourthpassengerprice = models.DecimalField(max_digits=20, decimal_places=3)
    fifthpassengerprice = models.DecimalField(max_digits=20, decimal_places=3)
    singlesupplement = models.DecimalField(max_digits=20, decimal_places=3)
    available = models.PositiveSmallIntegerField()


class Image(models.Model):
    ImageCats = models.TextChoices('ImageCats', 'small medium large')
    AssocType = models.TextChoices('AssocType', 'cruise ship cabin')

    imagefile = models.ImageField(max_length=100, upload_to=None, height_field=None, width_field=None)
    imagesize = models.CharField(blank=False, choices=ImageCats.choices, max_length=15)
    category = models.ForeignKey(Category, on_delete=models.PROTECT)
    associatedtype = models.CharField(blank=False, choices=AssocType.choices, max_length=15)
    associatedid = models.PositiveIntegerField()