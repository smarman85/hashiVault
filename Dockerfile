FROM ubuntu:bionic

RUN apt-get update && \
    apt-get install -y wget unzip

RUN wget https://releases.hashicorp.com/vault/1.1.3/vault_1.1.3_linux_amd64.zip -P /srv/ && \
    unzip /srv/vault_1.1.3_linux_amd64.zip -d /usr/local/bin/

ENV VAULT_ADDR='http://127.0.0.1:8208'
# NEVER DO THIS IN PROD, NEEEEEEEEEEEEVVVVVVVVVVVVVVVVVVVVEEEEEEEEEEERRRRRRRRRRR
ENV VAULT_DEV_ROOT_TOKEN_ID="tokenNotSecure"

CMD ["/bin/bash"]


## TEST unseal tokens 
#Unseal Key: Q9NHpqXaW/K5q6PS6u246igMz9HbUq/zemXNqKeughw=
#Root Token: s.HtorW1WkdpAqgzUpjugom7XK

