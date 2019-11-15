FROM debian:testing
MAINTAINER Akito <akito.kitsune@protonmail.com>
LABEL version="0.1.0"
COPY docker/micro-1.4.2-dev.77-linux64 \
     /usr/bin
RUN apt-get update && apt-get install -y                     \
      locales                                                \
      traceroute                                             \
      dnsutils                                               \
      nmap                                                   \
      tcpdump                                                \
      iperf                                                  \
      hping3                                                 \
      moreutils                                              \
      less                                                   \
      nano                                                   \
      vim                                                    \
      sed                                                    \
      gawk                                                   \
      htop                                                   \
      iotop                                                  \
      curl                                                   \
      netcat                                              && \
    apt-get install -y net-tools;                            \
    rm -rf /var/lib/apt/lists/*                           && \
    localedef -i en_US -c -f UTF-8 -A                        \
    /usr/share/locale/locale.alias en_US.UTF-8            && \
    echo 'alias micro="/usr/bin/micro-1.4.2-dev.77-linux64 ' \
      >> /etc/bash.bashrc
ENV LANG en_US.utf8
ENTRYPOINT ["/bin/bash"]