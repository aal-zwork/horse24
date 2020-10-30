FROM alpine
RUN apk add --no-cache tini openssh-client ca-certificates bash
ENTRYPOINT [ "tini", "-v", "--" ]
