FROM ubuntu:latest

RUN apt-get update \
    && apt-get -y install git libjansson-dev libssl-dev make\
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/github/brubeck.git
RUN cd brubeck && \
    ./script/bootstrap && \
    mv brubeck /usr/share/brubeck && \
    ln -s /usr/share/brubeck /usr/bin/brubeck

ENTRYPOINT ["brubeck"]
CMD ["--config=/etc/brubeck/config.json"]
