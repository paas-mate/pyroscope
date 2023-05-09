FROM shoothzj/base

WORKDIR /opt/pyroscope

ARG TARGETARCH

RUN wget -q https://dl.pyroscope.io/release/pyroscope-0.37.2-linux-$TARGETARCH.tar.gz  && \
    mkdir -p pyroscope && \
    tar -xf pyroscope-0.37.2-linux-$TARGETARCH.tar.gz -C /opt/pyroscope && \
    rm -rf pyroscope-0.37.2-linux-$TARGETARCH.tar.gz

ENV PYROSCOPE_HOME=/opt/pyroscope

ENTRYPOINT [ "/opt/pyroscope" ]
CMD ["server"]
