"""
WSGI config for app project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/4.2/howto/deployment/wsgi/
"""

import os

from django.core.wsgi import get_wsgi_application

# Altered from os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'app.settings') dut to docker container structure
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'app.app.settings')

application = get_wsgi_application()
