FROM python:3.8-alpine

ENV PYTHONUNBUFFERED 1

RUN mkdir /qira-django

WORKDIR /qira-django

COPY requirements.txt /qira-django/

RUN apk update && \
    apk add --virtual build-deps python3-dev gcc musl-dev && \
    apk add postgresql-dev
RUN python3 -m pip install -r requirements.txt

COPY . /qira-django/

CMD python3 manage.py makemigrations; python3 manage.py migrate; python3 manage.py runserver 0.0.0.0:8000
