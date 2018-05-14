FROM openjdk:8u171-jdk-slim

RUN apt-get update
RUN apt-get -y install curl
RUN sh -c '(echo "#!/usr/bin/env sh" && curl -L https://github.com/lihaoyi/mill/releases/download/0.2.0/0.2.0) > /usr/local/bin/mill && chmod +x /usr/local/bin/mill'
COPY precompile.sc /build.sc
RUN mill precompile.compile && rm build.sc && rm -r out

CMD ["mill", "-i"]

