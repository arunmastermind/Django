# Generated by Django 3.1.2 on 2020-11-09 15:31

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Apimethods',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('apimethod', models.CharField(choices=[('createauthtoken', 'Create Auth Token'), ('updateauthtoken', 'Update Auth Token'), ('retrieveexample', 'Demo'), ('createcabinattribute', 'Create Cabin Attribute'), ('retrievecabinattribute', 'Retrieve Cabin Attribute'), ('updatecabinattribute', 'Update Cabin Attribute'), ('deletecabinattribute', 'Delete Cabin Attribute'), ('createcategory', 'Create Category'), ('retrievecategory', 'Retrieve Category'), ('updatecategory', 'Update Category'), ('deletecategory', 'Delete Category'), ('createage', 'Create Age'), ('retrieveage', 'Retrieve Age'), ('updateage', 'Update Age'), ('deleteage', 'Delete Age'), ('createimagesize', 'Create Image Size'), ('retrieveimagesize', 'Retrieve Image Size'), ('updateimagesize', 'Update Image Size'), ('deleteimagesize', 'Delete Image Size'), ('createbedconfiguration', 'Create Bed Configuration'), ('retrievebedconfiguration', 'Retrieve Bed Configuration'), ('updatebedconfiguration', 'Update Bed Configuration'), ('deletebedconfiguration', 'Delete Bed Configuration'), ('createdepositpolicy', 'Create Deposit Policy'), ('retrievedepositpolicy', 'Retrieve Deposit Policy'), ('updatedepositpolicy', 'Update Deposit Policy'), ('deletedepositpolicy', 'Delete Deposit Policy'), ('createcancellationpolicy', 'Create Cancellation Policy'), ('retrievecancellationpolicy', 'Retrieve Cancellation Policy'), ('updatecancellationpolicy', 'Update Cancellation Policy'), ('deletecancellationpolicy', 'Delete Cancellation Policy'), ('createmarket', 'Create Market'), ('retrievemarket', 'Retrieve Market'), ('updatemarket', 'Update Market'), ('deletemarket', 'Delete Market'), ('createoptionduration', 'Create Option Duration'), ('retrieveoptionduration', 'Retrieve Option Duration'), ('updateoptionduration', 'Update Option Duration'), ('deleteoptionduration', 'Delete Option Duration'), ('creatediningseating', 'Create Dining Seating'), ('retrievediningseating', 'Retrieve Dining Seating'), ('updatediningseating', 'Update Dining Seating'), ('deletediningseating', 'Delete Dining Seating'), ('creatediningtablesize', 'Create Dining Table Size'), ('retrievediningtablesize', 'Retrieve Dining Table Size'), ('updatediningtablesize', 'Update Dining Table Size'), ('deletediningtablesize', 'Delete Dining Table Size'), ('createcabinholdduration', 'Create Cabin Hold Duration'), ('retrievecabinholdduration', 'Retrieve Cabin Hold Duration'), ('updatecabinholdduration', 'Update Cabin Hold Duration'), ('deletecabinholdduration', 'Delete Cabin Hold Duration'), ('creategroupreview', 'Create Group Review'), ('retrievegroupreview', 'Retrieve Group Review'), ('updategroupreview', 'Update Group Review'), ('deletegroupreview', 'Delete Group Review'), ('createship', 'Create Ship'), ('retrieveship', 'Retrieve Ship'), ('updateship', 'Update Ship'), ('deleteship', 'Delete Ship'), ('creategrade', 'Create Grade'), ('retrievegrade', 'Retrieve Grade'), ('updategrade', 'Update Grade'), ('deletegrade', 'Delete Grade'), ('createport', 'Create Port'), ('retrieveport', 'Retrieve Port'), ('updateport', 'Update Port'), ('deleteport', 'Delete Port'), ('createcruise', 'Create Cruise'), ('retrievecruise', 'Retrieve Cruise'), ('updatecruise', 'Update Cruise'), ('deletecruise', 'Delete Cruise'), ('createrate', 'Create Rate'), ('retrieverate', 'Retrieve Rate'), ('updaterate', 'Update Rate'), ('deleterate', 'Delete Rate'), ('createagency', 'Create Agency'), ('retrieveagency', 'Retrieve Agency'), ('updateagency', 'Update Agency'), ('deleteagency', 'Delete Agency'), ('createimage', 'Create Image'), ('retrieveimage', 'Retrieve Image'), ('updateimage', 'Update Image'), ('deleteimage', 'Delete Image'), ('retrieveavailablesailings', 'Retrieve Available Sailings'), ('retrieveavailablerates', 'Retrieve Available Rates'), ('retrieveavailablegrades', 'Retrieve Available Grades'), ('retrieveavailablecabins', 'Retrieve Available Cabins'), ('pricing', 'Full Cruise Pricing'), ('createcabinhold', 'Create Cabin Hold'), ('retrievecabinhold', 'Retrieve Cabin Hold'), ('updatecabinhold', 'Update Cabin Hold'), ('deletecabinhold', 'Delete Cabin Hold'), ('createreservation', 'Create Reservation'), ('retrievereservation', 'Retrieve Reservation'), ('updatereservation', 'Update/Confirm Reservation'), ('deletereservation', 'Delete/Cancel Reservation'), ('retrievereservationlist', 'Retrieve List of Reservations')], max_length=32)),
            ],
        ),
        migrations.CreateModel(
            name='Clients',
            fields=[
                ('client', models.CharField(max_length=3, primary_key=True, serialize=False)),
                ('email', models.EmailField(max_length=255)),
                ('startdate', models.DateField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='Users',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('username', models.CharField(max_length=100)),
                ('password', models.CharField(max_length=100)),
                ('email', models.EmailField(max_length=255)),
                ('client', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='dbprojadmin.clients')),
            ],
        ),
        migrations.CreateModel(
            name='Userslooktobook',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cost', models.DecimalField(decimal_places=3, max_digits=5)),
                ('client', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='dbprojadmin.clients')),
                ('method', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='dbprojadmin.apimethods')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='dbprojadmin.users')),
            ],
        ),
        migrations.AddField(
            model_name='apimethods',
            name='client',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='dbprojadmin.clients'),
        ),
        migrations.CreateModel(
            name='Apilog',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('logged', models.DateTimeField(auto_now_add=True)),
                ('method', models.CharField(max_length=32)),
                ('serialised', models.TextField()),
                ('clientuser', models.PositiveIntegerField()),
                ('client', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='dbprojadmin.clients')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='dbprojadmin.users')),
            ],
        ),
    ]
