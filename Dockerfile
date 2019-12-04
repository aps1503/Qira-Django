FROM python:3

ENV PYTHONUNBUFFERED 1

RUN mkdir /qira-django

WORKDIR /qira-django

COPY requirements.txt /qira-django/

RUN  pip install -r requirements.txt

COPY . /qira-django/

RUN ["python","manage.py","makemigrations"]
RUN ["python","manage.py","migrate"]
CMD ["python", "manage.py", "runserver","0.0.0.0:8000"]