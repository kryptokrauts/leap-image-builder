FROM ubuntu:22.04 AS builder

RUN apt-get update && apt-get -y install wget
RUN wget https://github.com/AntelopeIO/leap/releases/download/v4.0.4/leap_4.0.4-ubuntu22.04_amd64.deb
RUN apt install -y ./leap_4.0.4-ubuntu22.04_amd64.deb 

FROM ubuntu:22.04 AS runner

COPY --from=builder /usr/bin /usr/bin

RUN adduser --disabled-password leap && \
  mkdir -p /opt/leap && \
  chown -R leap:leap /opt

WORKDIR /opt/leap
USER leap

ENTRYPOINT [\
    "/usr/bin/nodeos",\
    "--data-dir", "/opt/leap/data",\
    "--config-dir", "/opt/leap/config"\
]