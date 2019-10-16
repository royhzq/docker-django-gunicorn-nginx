# docker-django-gunicorn-nginx

Project template for a dockerized Django application deployed with gunicorn and nginx as a web server, together postgres database image.
## Quickstart
Run in this path:
```sh
$ docker-compose up
```
This will build the docker image and the production-ready Django app will be running on port 80, http://my-public-ip
Static files will be served by Nginx on http://my-public-ip/static/ 
