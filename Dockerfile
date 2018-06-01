FROM openjdk:8u171-jdk-slim

RUN apt-get update
RUN apt-get -y install curl
RUN apt-get -y install git
RUN sh -c '(echo "#!/usr/bin/env sh" && curl -L https://github.com/lihaoyi/mill/releases/download/0.2.2/0.2.2) > /usr/local/bin/mill && chmod +x /usr/local/bin/mill'

CMD ["mill", "-i"]

