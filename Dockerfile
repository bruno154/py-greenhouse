FROM python:slim AS base

ARG APP_DIR=/usr/app

USER root

RUN mkdir ${APP_DIR}

WORKDIR ${APP_DIR}

RUN apt-get update && apt-get install -y build-essential

COPY requirements.txt ${APP_DIR}

RUN pip install -r requirements.txt