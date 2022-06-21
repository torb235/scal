FROM ubuntu:22.04

WORKDIR /app

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y curl wget qbittorrent-nox

ENV VERSION=1.26.1
ENV ARCH=amd64

ADD https://pkgs.tailscale.com/stable/tailscale_${VERSION}_${ARCH}.tgz /tailscale.tgz
RUN mkdir /tailscale && tar xzf /tailscale.tgz -C /tailscale --strip-components 1

COPY . .
RUN chmod +x startup.sh on_finish.sh keep_alive.sh scalling.sh

CMD ["bash", "startup.sh"]

