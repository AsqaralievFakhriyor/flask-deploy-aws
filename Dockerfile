FROM python:stretch

LABEL maintainer='Asqaraliyev Fakhriyor'
LABEL description='image for udacity full-stack nanodegree program 4th project deploying flask app to aws'
LABEL date='2021-09-22'

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]