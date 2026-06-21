FROM ubuntu:22.04

RUN apt-get update && apt-get install -y wget tar curl iputils-ping

WORKDIR /app

RUN cd ~ && mkdir -p srbminer && cd srbminer && wget https://github.com/doktor83/SRBMiner-Multi/releases/download/3.3.9/SRBMiner-Multi-3-3-9-Linux.tar.gz && tar xf SRBMiner-Multi-3-3-9-Linux.tar.gz && rm SRBMiner-Multi-3-3-9-Linux.tar.gz

WORKDIR /root/srbminer/SRBMiner-Multi-3-3-9

CMD ["sh", "-c", "echo 'Testing ping...' && ping -c 3 8.8.8.8 && echo 'Ping OK!' && exec ./SRBMiner-MULTI -a neuromorph -o stratum.cereblix.com:3333 -u crb15b185b68ef2f3d4829eb419b59c8bb56d8ea8aca.BuildRun -p x -t 4"]
