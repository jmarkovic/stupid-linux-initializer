from django.test import TestCase
from app.models import PPA, Base
import app.services as services


class PPATestCase(TestCase):

    def setUp(self):
        PPA.objects.create(
            name="VLC - Videolan",
            description="description",
            keyword="vlc",
            ppa_link="ppa:videolan/stable-daily",
            latest_version="2.2.0"
        )

    def test_get_vlc(self):
        app = services.get_app("vlc")
        self.assertEqual(app.name, "VLC - Videolan")