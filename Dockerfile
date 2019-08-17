FROM python:3-alpine
MAINTAINER Bohdan Sukhov <macejiko@gmail.com>

WORKDIR /user/local

RUN apk add --no-cache --virtual .build-deps gcc libc-dev libxml2-dev libxslt-dev && \
    apk add --no-cache git libxslt && \
    pip install --no-cache-dir cookiecutter lxml && \
    apk del .build-deps

ENTRYPOINT ["cookiecutter"]
CMD ["https://github.com/macejiko/rf_boilerplate.git"]

