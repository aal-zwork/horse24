FROM python:3.8-alpine

RUN apk --no-cache add tini && pip install pipenv gunicorn
COPY sh/* /usr/local/bin/

VOLUME [ "/api" ]

WORKDIR /api

ENTRYPOINT [ "tini", "-v", "--" ]
CMD [ "entrypoint.sh" ]
