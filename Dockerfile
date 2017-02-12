FROM ubuntu:16.10
MAINTAINER Victor Lellis <vmlellis@gmail.com>

RUN apt-get update && \
    apt-get install -y --no-install-recommends sudo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV USER xclient
ENV UID 1000

RUN useradd -m -u $UID $USER && \
    echo "$USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

USER $USER
ENTRYPOINT ["/entrypoint.sh"]
