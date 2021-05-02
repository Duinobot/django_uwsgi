FROM python:3.7

MAINTAINER DJG

ENV PYTHONUNBUFFERED 1

RUN mkdir -p /var/www/html/du

WORKDIR /var/www/html/du

ADD . /var/www/html/du

RUN pip install -r requirements.txt

RUN sed -i 's/\r//' ./start.sh

RUN chmod +x ./start.sh
