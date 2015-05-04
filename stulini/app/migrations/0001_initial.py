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
                ('id', models.AutoField(serialize=False, auto_created=True, verbose_name='ID', primary_key=True)),
                ('setup_script_url', models.CharField(max_length=255)),
            ],
            options={
                'verbose_name': 'custom',
            },
        ),
        migrations.CreateModel(
            name='PPA',
            fields=[
                ('id', models.AutoField(serialize=False, auto_created=True, verbose_name='ID', primary_key=True)),
                ('ppa_link', models.CharField(max_length=255, validators=[app.models.ppa_link_validator])),
                ('latest_version', models.CharField(max_length=34)),
            ],
            options={
                'verbose_name': 'ppa',
            },
        ),
    ]
