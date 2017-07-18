#!/bin/sh

# Waiting for Postgres
until nc -z postgres 5432; do
    sleep 1
done

# Waiting for Redis
until nc -z redis 6379; do
    sleep 1
done

su -m whoami -c "python manage.py runserver 0.0.0.0:8000"