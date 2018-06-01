FROM openjdk:8u171-jdk-slim

ENV CACHE_TAG $CACHE_TAG

RUN apt-get update
RUN apt-get -y install curl
RUN apt-get -y install git
RUN sh -c '(echo "#!/usr/bin/env sh" && curl -L https://github.com/lihaoyi/mill/releases/download/${CACHE_TAG}/${CACHE_TAG}) > /usr/local/bin/mill && chmod +x /usr/local/bin/mill'

CMD ["mill", "-i"]

