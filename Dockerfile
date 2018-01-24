FROM python:alpine
WORKDIR /app
RUN apk update &&\
    apk add -u groff &&\
    apk add -u less &&\
    pip install awscli --upgrade
ENTRYPOINT ["aws"]
