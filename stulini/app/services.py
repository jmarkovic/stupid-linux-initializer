from app.models import PPA

__author__ = 'josip'


def get_app(app_keyword):
    return PPA.objects.get(keyword=app_keyword)