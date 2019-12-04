FROM python:3

ENV PYTHONUNBUFFERED 1

RUN mkdir /qira-django

WORKDIR /qira-django

COPY requirements.txt /qira-django/

RUN  pip install -r requirements.txt

COPY . /qira-django/

CMD ["python", "auto-migrate.py"]