FROM docker/compose

RUN apk add --update --no-cache \
        bash \
        git \
        curl \
        openssh \
        python3 \
        docker-cli

RUN mkdir ~/.ssh && \
    chmod 0700 ~/.ssh && \
    ssh-keyscan github.com > ~/.ssh/known_hosts
