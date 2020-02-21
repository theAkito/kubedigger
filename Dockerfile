FROM debian:testing
LABEL maintainer="Akito <the@akito.ooo>" \
      version="0.4.1"
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