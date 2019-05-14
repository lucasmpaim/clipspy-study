FROM python:3.7.3-alpine3.9

MAINTAINER Lucas <lucasmpaim1@gmail.com>

ENV PYTHONUNBUFFERED 1
ENV LC_ALL pt_BR.UTF-8
ENV LANG pt_BR.UTF-8
ENV LANGUAGE pt_BR.UTF-8

RUN apk update && \
    apk upgrade && \

    apk add --no-cache \
        gcc build-base \
        libffi-dev \
        bash && \
    mkdir /app && \
    mkdir /scripts

COPY . /app
COPY ./compose/python/scripts/install_clips.sh /scripts

RUN chmod +x ./scripts/install_clips.sh && ./scripts/install_clips.sh

RUN pip install -Ur ./app/requirements.txt && apk add --update bash && rm -rf /var/cache/apk/*

WORKDIR /app
