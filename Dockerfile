FROM debian

RUN apt update
RUN apt install -y extrepo
RUN extrepo enable osmocom-latest

RUN apt update
RUN apt install -y limesuite
RUN apt install -y \
  osmo-hlr \
  osmo-msc \
  osmo-mgw \
  osmo-stp \
  osmo-bsc \
  osmo-ggsn \
  osmo-sgsn \
  osmo-bts-trx \
  osmo-trx-lms \
  osmo-pcu \
  osmo-cbc
