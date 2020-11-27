FROM alpine
RUN apk add --no-cache tini openssh-client ca-certificates bash
VOLUME [ "/root/.ssh" ]
RUN chown +r root:root /root/.ssh
ENTRYPOINT [ "tini", "-v", "--" ]
