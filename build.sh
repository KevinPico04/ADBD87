#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate


DJANGO_SUPERUSER_PASSWORD=picoreyes2003 python manage.py createsuperuser --no-input --username=kevinpico  --email=kevinprhd1@gmail.com