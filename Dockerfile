FROM ubuntu:22.04

WORKDIR /app

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -qq update && \
apt-get -qq install -y curl git aria2 python3 wget unzip python3-pip python3-lxml

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .
RUN chmod +x startup.sh on_finish.sh keep_alive.sh

CMD ["bash", "startup.sh"]
