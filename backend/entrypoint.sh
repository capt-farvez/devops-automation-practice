#!/bin/sh
source .venv/bin/activate

python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --noinput

exec gunicorn --timeout 600 --bind 0.0.0.0:8000 testproject.wsgi:application --access-logfile - --error-logfile - --log-level debug