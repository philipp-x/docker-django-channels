# docker-django-channels

Django development made easy with [Docker](https://www.docker.com/). This quickstart guide demonstrates how to containerize [Django](https://www.djangoproject.com/), [Postgres](https://www.postgresql.org/) and [Redis](http://redis.io/) to create a realtime Django application with [Django Channels](https://github.com/django/channels). Channels loads into Django as a pluggable app to bring WebSocket, long-poll HTTP, task offloading and other asynchrony support to your code. Channels is an official Django Project and as such has a deprecation policy.

Docker is supported on Linux, Cloud, Windows and macOS. If you haven't used Docker before, be sure to check out the [Installation Guide](https://docs.docker.com/engine/installation/).

## Requirements

* Docker v17.06 or higher

## Setup

1. Make sure [Docker](https://store.docker.com/) is installed and running.
2. Run the following commands in the given order:

```bash
ssh -T git@github.com
# Test the connection
git clone git@github.com:philipp-x/docker-django-channels.git
# Clone the repository
cd docker-django-channels
# Change the directory
docker-compose up -d
# Start the containers in the background
docker-compose run --rm web python manage.py createsuperuser
# Create a superuser account
```

At this point, your Django application should be running at port `8000` on your Docker host.

Type `docker-compose stop` to stop running containers without removing them.

## Upgrade

1. Stop all running containers.
2. Run `git pull` in your working directory to fetch and merge remote changes.
3. Execute `docker-compose build --pull` to rebuild the service images.

## Command Reference

### Docker

* Cleanup

```bash
docker stop $(docker ps -a -q)
# Stop all running containers
docker kill $(docker ps -q)
# Kill all running containers
docker rm $(docker ps -a -q)
# Delete all stopped containers
docker rmi $(docker images -q -f dangling=true)
# Delete all dangling images
docker rmi $(docker images -q)
# Delete all images
docker volume rm $(docker volume ls -q -f dangling=true)
# Delete all dangling volumes
```