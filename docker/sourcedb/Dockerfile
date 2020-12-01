FROM alpine

RUN apk add --no-cache tini openssh-client ca-certificates bash

COPY sh/* /usr/local/bin/

VOLUME [ "/.ssh" ]

ENTRYPOINT [ "tini", "-v", "--", "entrypoint.sh" ]
