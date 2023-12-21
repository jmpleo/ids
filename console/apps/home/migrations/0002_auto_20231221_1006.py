# Generated by Django 3.2.6 on 2023-12-21 10:06

import django.contrib.postgres.fields
from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='alert',
            old_name='alert_id',
            new_name='signature_id',
        ),
        migrations.RemoveField(
            model_name='alert',
            name='sig_id',
        ),
        migrations.AddField(
            model_name='alert',
            name='description',
            field=models.TextField(default=django.utils.timezone.now),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='alert',
            name='tags',
            field=django.contrib.postgres.fields.ArrayField(base_field=models.CharField(choices=[('http', 'HTTP'), ('bruteforce', 'Brute Force'), ('sqlinjection', 'SQL Injection'), ('ssh', 'SSH')], max_length=50), default=[], size=None),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='alert',
            name='timestamp',
            field=models.TimeField(default=django.utils.timezone.now),
        ),
    ]
