from django.core.exceptions import ValidationError
from django.db import models
from django.utils.translation import ugettext as _


class Base(models.Model):
    name = models.CharField(max_length=255)
    description = models.TextField(default=_("no description"))
    # this should be an ImageField
    # icon = models.CharField(null=True, blank=True)
    keyword = models.CharField(max_length=64)

    class Meta:
        abstract = True


def ppa_link_validator(value):
    if value[:4] is not "ppa:":
        return ValidationError("PPA link has to start with 'ppa:'")


class PPA(Base):
    ppa_link = models.CharField(max_length=255, validators=[ppa_link_validator])
    latest_version = models.CharField(max_length=34)

    class Meta:
        verbose_name = _("ppa")


class Custom(Base):
    setup_script_url = models.CharField(max_length=255)

    class Meta:
        verbose_name = _("custom")