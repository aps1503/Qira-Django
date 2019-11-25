FROM python:3.8.0-slim-buster

ENV PYTHONUNBUFFERED 1

RUN mkdir /qira-face

WORKDIR /qira-face

COPY requirements.txt /qira-face/

RUN  pip install -r requirements.txt

COPY . /qira-face/