#!/bin/sh
source .venv/bin/activate

python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --noinput
python manage.py runserver