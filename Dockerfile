FROM python:3.9-alpine

LABEL maintainer="Zain Ul Abideen zainulabideen1258@gmail.com"

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY ./requirements.txt .

RUN pip install --upgrade pip \
    && pip install gunicorn \
    && pip install -r requirements.txt

COPY . .

EXPOSE 8000

ENTRYPOINT /bin/sh entrypoints/entrypoint.sh
