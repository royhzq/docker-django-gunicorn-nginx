#!/bin/sh
echo "Running migrations.."
python manage.py makemigrations
python manage.py migrate

echo "Collecting Static.."
python manage.py collectstatic --noinput

exec "$@"
