FROM python:3.7-alpine
MAINTAINER pragati

ENV PYTHONUNBUFFERED 1

copy ./requirement.txt /requirement.txt
RUN pip install -r /requirement.txt

RUN mkdir /app
WORKDIR /app
copy ./app /app

RUN adduser -D user
USER user
