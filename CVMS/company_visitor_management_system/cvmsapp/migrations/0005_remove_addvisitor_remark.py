# Generated by Django 4.1.7 on 2023-03-16 04:24

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cvmsapp', '0004_addvisitor_remark'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='addvisitor',
            name='remark',
        ),
    ]
