FROM --platform=$TARGETPLATFORM debian:bullseye-slim
ARG TARGETPLATFORM

RUN apt update
RUN apt install -y supervisor wget && rm -rf /var/lib/apt/lists/*

RUN if [ "$TARGETPLATFORM" = "linux/amd64" ]; then \
        wget https://downloads.paessler.com/prtgmpprobe/linux/prtgmpprobe_amd64.deb && dpkg -i prtgmpprobe_amd64.deb && rm prtgmpprobe_amd64.deb; \
    elif [ "$TARGETPLATFORM" = "linux/arm64" ]; then \
        wget https://downloads.paessler.com/prtgmpprobe/linux/prtgmpprobe_aarch64.deb && dpkg -i prtgmpprobe_aarch64.deb && rm prtgmpprobe_aarch64.deb; \
    elif [ "$TARGETPLATFORM" = "linux/arm/v7" ]; then \
        wget https://downloads.paessler.com/prtgmpprobe/linux/prtgmpprobe_armhf.deb && dpkg -i prtgmpprobe_armhf.deb && rm prtgmpprobe_armhf.deb; \
    fi

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
