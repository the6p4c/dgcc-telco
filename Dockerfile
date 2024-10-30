FROM debian

# add Osmocom repository
RUN apt update
RUN apt install -y extrepo
RUN extrepo enable osmocom-latest

# install LimeSDR and Osmocom packages
RUN apt update
RUN apt install -y \
  limesuite \
  osmo-bsc \
  osmo-bts-trx \
  osmo-cbc \
  osmo-ggsn \
  osmo-hlr \
  osmo-mgw \
  osmo-msc \
  osmo-pcu \
  osmo-sgsn \
  osmo-stp \
  osmo-trx-lms
