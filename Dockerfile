FROM python:3-alpine
MAINTAINER Bohdan Sukhov <macejiko@gmail.com>

WORKDIR /user/local

RUN apk add --no-cache git && \
    pip install --no-cache-dir cookiecutter

ENTRYPOINT ["cookiecutter"]
CMD ["https://github.com/macejiko/rf_boilerplate.git"]

