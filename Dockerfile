FROM python:3.6-stretch
COPY ./entrypoint.sh /app/entrypoint.sh
COPY . /app
WORKDIR /app
RUN apt-get update -y
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
WORKDIR ./myproject
ENTRYPOINT ["/app/entrypoint.sh"]
