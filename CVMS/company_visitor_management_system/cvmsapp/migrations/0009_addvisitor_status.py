# Generated by Django 4.0.3 on 2023-05-22 11:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cvmsapp', '0008_alter_addvisitor_remark'),
    ]

    operations = [
        migrations.AddField(
            model_name='addvisitor',
            name='status',
            field=models.IntegerField(default=0),
        ),
    ]