FROM debian:testing
MAINTAINER Akito <akito.kitsune@protonmail.com>
LABEL version="0.1.0"
RUN apt-get update && apt-get install -y         \
      locales                                    \
      traceroute                                 \
      dnsutils                                   \
      nmap                                       \
      tcpdump                                    \
      iperf                                      \
      hping3                                     \
      moreutils                                  \
      less                                       \
      nano                                       \
      vim                                        \
      sed                                        \
      gawk                                       \
      htop                                       \
      iotop                                      \
      netcat                                  && \
    apt-get install -y net-tools;                \
    rm -rf /var/lib/apt/lists/*               && \
    localedef -i en_US -c -f UTF-8 -A            \
    /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8
ENTRYPOINT ["/bin/bash"]