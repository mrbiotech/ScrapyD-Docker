FROM python:3.10.0-alpine3.14
EXPOSE 6800
# Install dependencies to build Python cffi module and install ScrapyD
RUN apk update && \
    apk upgrade && \
    apk add gcc musl-dev python3-dev libffi-dev openssl-dev libressl-dev && \
    pip install --upgrade pip && \
    pip install scrapyd
# Remove build dependencies and clear APK cache
RUN apk del gcc musl-dev python3-dev libffi-dev openssl-dev libressl-dev
# RUN apk cache clean
