FROM python:3.10.9-alpine3.17

MAINTAINER FolaFlor
LABEL maintainer="https://dpcalfola.tistory.com/"

ENV PYTHONUNBUFFRED 1

COPY ./requirements.txt /tmp/requirements.txt
COPY requirements-dev.txt /tmp/requirements.dev.txt
COPY ./django_app /django_app

WORKDIR /django_app
EXPOSE 8000

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    # Installation psycopg2 dependency applications
    apk add --update --no-cache postgresql-client && \
    apk add --update --no-cache --virtual .tmp-build-deps \
        build-base postgresql-dev musl-dev && \
    # Installation pip package
    /py/bin/pip install -r /tmp/requirements.txt && \
    rm -rf /tmp && \
    adduser \
        --disabled-password \
        --no-create-home \
        sklifgh4soiasdm1-0xcaskldfh1902

ENV PATH="/py/bin:$PATH"

USER sklifgh4soiasdm1-0xcaskldfh1902