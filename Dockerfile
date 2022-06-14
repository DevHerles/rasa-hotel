FROM python:3.7.6-stretch AS BASE

RUN apt-get update \
    && apt-get --assume-yes --no-install-recommends install \
        build-essential \
        curl \
        git \
        jq \
        libgomp1 \
        vim

WORKDIR /app

COPY ./actions /app/actions
COPY ./data /app/data
COPY ./tests /app/tests

COPY config.yml /app/config.yml
COPY credentials.yml /app/credentials.yml
COPY domain.yml /app/domain.yml
COPY endpoints.yml /app/endpoints.yml

RUN pip install --no-cache --upgrade pip
RUN pip install rasa

