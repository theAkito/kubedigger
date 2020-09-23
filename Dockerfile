FROM debian:testing

ARG BUILD_VERSION
ARG BUILD_REVISION
ARG BUILD_DATE

LABEL maintainer="Akito <the@akito.ooo>"
LABEL org.opencontainers.image.authors="Akito <the@akito.ooo>"
LABEL org.opencontainers.image.vendor="Akito"
LABEL org.opencontainers.image.version="${BUILD_VERSION}"
LABEL org.opencontainers.image.revision="${BUILD_REVISION}"
LABEL org.opencontainers.image.created="${BUILD_DATE}"
LABEL org.opencontainers.image.title="Kubernetes Cluster Debugging Utility"
LABEL org.opencontainers.image.description="Aims to be deployed as a workload in a Kubernetes cluster,\
 so that you can debug and test connectivity between workloads from their perspective."
LABEL org.opencontainers.image.url="akito.ooo"
LABEL org.opencontainers.image.documentation=""
LABEL org.opencontainers.image.source="https://github.com/theAkito/docker-kubedigger"
LABEL org.opencontainers.image.licenses="GPL-3.0+"

COPY docker/bash_aliases /etc
RUN apt-get update && apt-get install -y                      \
      iputils-arping                                          \
      iputils-clockdiff                                       \
      iputils-ping                                            \
      iputils-tracepath                                       \
      lsm                                                     \
      procps                                                  \
      locales                                                 \
      traceroute                                              \
      iproute2                                                \
      dnsutils                                                \
      nmap                                                    \
      ncat                                                    \
      tcpdump                                                 \
      iperf                                                   \
      hping3                                                  \
      moreutils                                               \
      less                                                    \
      nano                                                    \
      micro                                                   \
      vim                                                     \
      sed                                                     \
      gawk                                                    \
      htop                                                    \
      iotop                                                   \
      curl                                                    \
      sudo                                                    \
      socat                                                   \
      netcat                                               && \
    apt-get install -y net-tools;                             \
    rm -rf /var/lib/apt/lists/*                            && \
    localedef -i en_US -c -f UTF-8 -A                         \
    /usr/share/locale/locale.alias en_US.UTF-8             && \
    cat /etc/bash_aliases >> /etc/bash.bashrc

ENV LANG en_US.utf8
ENTRYPOINT ["/bin/bash"]