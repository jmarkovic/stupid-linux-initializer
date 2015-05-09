# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import app.models


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Custom',
            fields=[
                ('id', models.AutoField(serialize=False, verbose_name='ID', auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=255)),
                ('description', models.TextField(default='no description')),
                ('keyword', models.CharField(max_length=64)),
                ('setup_script_url', models.CharField(max_length=255)),
            ],
            options={
                'verbose_name': 'custom',
            },
        ),
        migrations.CreateModel(
            name='PPA',
            fields=[
                ('id', models.AutoField(serialize=False, verbose_name='ID', auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=255)),
                ('description', models.TextField(default='no description')),
                ('keyword', models.CharField(max_length=64)),
                ('ppa_link', models.CharField(validators=[app.models.ppa_link_validator], max_length=255)),
                ('latest_version', models.CharField(max_length=34)),
            ],
            options={
                'verbose_name': 'ppa',
            },
        ),
    ]
