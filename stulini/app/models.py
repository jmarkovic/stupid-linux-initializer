from django.core.exceptions import ValidationError
from django.db import models
from django.utils.translation import ugettext as _


class Base(models.Model):
    name = models.CharField()
    description = models.TextField()
    icon = models.CharField(null=True, blank=True)
    keyword = models.CharField()

    class Meta:
        abstract = True


def ppa_link_validator(value):
    if value[:4] is not "ppa:":
        return ValidationError("PPA link has to start with 'ppa:'")


class PPA(models.Model):
    ppa_link = models.CharField(max_length=255, validators=[ppa_link_validator])
    latest_version = models.CharField(max_length=34)

    class Meta:
        verbose_name = _("ppa")


class Custom(models.Model):
    setup_script_url = models.CharField(max_length=255)

    class Meta:
        verbose_name = _("custom")