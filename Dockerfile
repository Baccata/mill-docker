FROM debian:stretch-slim

ARG TAG

RUN echo $TAG

CMD ["echo", "PIPO"]

