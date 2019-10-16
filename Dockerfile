FROM python:3.6-stretch
COPY . /app
RUN pwd
RUN ls
RUN ls app
WORKDIR /app
RUN  ls
RUN apt-get update -y
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
RUN django-admin startproject myproject
RUN ls
WORKDIR ./myproject
RUN ls
RUN python manage.py runserver
