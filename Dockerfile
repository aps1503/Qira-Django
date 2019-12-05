FROM python:3-alpine

ENV PYTHONUNBUFFERED 1

RUN mkdir /qira-django

WORKDIR /qira-django

COPY requirements.txt /qira-django/

RUN  py-pip install -r requirements.txt

COPY . /qira-django/

CMD python manage.py makemigrations; python manage.py migrate; python manage.py runserver 0.0.0.0:8000