FROM python:3.9.18-slim-bullseye

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1


WORKDIR /app

COPY . /app/

RUN apt-get update && pip --version

COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

