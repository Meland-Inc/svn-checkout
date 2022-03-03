FROM stefanprodan/alpine-base:latest

RUN echo -e "http://nl.alpinelinux.org/alpine/v3.12/main\nhttp://nl.alpinelinux.org/alpine/v3.12/community" > /etc/apk/repositories

RUN apk --no-cache add subversion bash

COPY src/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]