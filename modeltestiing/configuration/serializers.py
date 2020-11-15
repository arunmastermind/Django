from rest_framework import serializers
from .models import (
    # Setup
    Cabinattribute,
    Category,
    Age,
    Imagesize,
    Bedconfiguration,
    Consortia,
    Depositpolicy,
    Cancellationpolicy,
    Market,
    Optiontime,
    Cabinholdduration,
    Diningtable,
    Diningseating,
    Groupreview,
    Agency,
    # Build
    Ship,
    Grade,
    Cabin,
    Cruise,
    Port,
    CruiseItinerary,
    Sailings,
    Cruisefeesandtaxes,
    Rate,
    Ratepricing,
    Image,
)


class CabinattributeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Cabinattribute
        fields = '__all__'


class CategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Category
        fields = '__all__'


class AgeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Age
        fields = '__all__'


class ImagesizeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Imagesize
        fields = '__all__'


class BedconfigurationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Bedconfiguration
        fields = '__all__'


class ConsortiaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Consortia
        fields = '__all__'


class DepositpolicySerializer(serializers.ModelSerializer):
    class Meta:
        model = Depositpolicy
        fields = '__all__'


class CancellationpolicySerializer(serializers.ModelSerializer):
    class Meta:
        model = Cancellationpolicy
        fields = '__all__'


class MarketSerializer(serializers.ModelSerializer):
    class Meta:
        model = Market
        fields = '__all__'


class OptiontimeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Optiontime
        fields = '__all__'


class CabinholddurationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Cabinholdduration
        fields = '__all__'


class DiningtableSerializer(serializers.ModelSerializer):
    class Meta:
        model = Diningtable
        fields = '__all__'


class DiningseatingSerializer(serializers.ModelSerializer):
    class Meta:
        model = Diningseating
        fields = '__all__'


class GroupreviewSerializer(serializers.ModelSerializer):
    class Meta:
        model = Groupreview
        fields = '__all__'


class AgencySerializer(serializers.ModelSerializer):
    class Meta:
        model = Agency
        fields = '__all__'


class PortSerializer(serializers.ModelSerializer):
    class Meta:
        model = Port
        fields = '__all__'


class CruisefeesandtaxesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Cruisefeesandtaxes
        fields = '__all__'


class ShipSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ship
        fields = '__all__'


class CabinSerializer(serializers.ModelSerializer):
    class Meta:
        model = Cabin
        fields = '__all__'


class GradeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Grade
        fields = '__all__'


class CruiseitinerarySerializer(serializers.ModelSerializer):
    port = serializers.SlugRelatedField(
        slug_field='name',
        read_only=True,
    )

    class Meta:
        model = CruiseItinerary
        fields = [
            'day',
            'port',
            'arrivetime',
            'departtime',
            'extrainformation',
        ]


class CruisefeesandtaxesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Cruisefeesandtaxes
        fields = '__all__'


class SailingsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Sailings
        fields = '__all__'


class CruiseSerializer(serializers.ModelSerializer):
    itinerary = CruiseitinerarySerializer(many=True)
    gfts = CruisefeesandtaxesSerializer(many=True)
    sailings = SailingsSerializer(many=True)

    class Meta:
        model = Cruise
        fields = [
            'id',
            'published',
            'code',
            'name',
            'nights',
            'seadays',
            'descriptions',
            'itinerary',
            'gfts',
            'sailings'
        ]


class RatepricingSerializer(serializers.ModelSerializer):
    grade = serializers.SlugRelatedField(
        read_only=True,
        slug_field='code',
    )

    class Meta:
        model = Ratepricing
        fields = [
            'id',
            'grade',
            'firstpassengerprice',
            'secondpassengerprice',
            'thirdpassengerprice',
            'fourthpassengerprice',
            'fifthpassengerprice',
            'singlesupplement',
            'availabilty',
        ]


class AgencyListSerializer(serializers.ModelSerializer):
    class Meta:
        model = Agency
        fields = ['id', 'name']


class RateSerializer(serializers.ModelSerializer):
    grades = RatepricingSerializer(many=True)
    agencies = AgencyListSerializer(many=True)
    sailings = SailingsSerializer(many=True)
    market = MarketSerializer()
    cancellationpolicy = CancellationpolicySerializer()

    class Meta:
        model = Rate
        fields = [
            'published',
            'id',
            'code',
            'name',
            'market',
            'validfrom',
            'validto',
            'commissionoverride',
            'cancellationpolicy',
            'currency',
            'descriptions',
            'appliesto',
            'grades',
        ]


class ImageSerializer(serializers.ModelSerializer):
    class Meta:
        model = Image
        fields = '__all__'
