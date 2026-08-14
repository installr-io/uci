ARG version

FROM alpine:${version:-3.23}
LABEL org.opencontainers.image.source=https://github.com/installr-io/uci

USER root

ENV TZ=UTC
ENV LANG=C.UTF-8
ENV LANGUAGE=C.UTF-8

ENV UCI_USERID=2139
ENV UCI_USERNAME=uci
ENV UCI_VENDOR=Installr.io

COPY --chown=${UCI_USERID}:${UCI_USERID} home /home/${UCI_USERNAME}

RUN set -e; \
    ## update/upgrade the base system
    apk --no-cache upgrade; \
    ## install needed packages
    apk --no-cache add tzdata bash wget curl; \
    ## set localtime (timezone info)
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime; \
    ## create non-privileged user (-D == Don't assign a password)
    adduser -s /bin/bash -D -u ${UCI_USERID} ${UCI_USERNAME}; \
    chown -R ${UCI_USERNAME}:${UCI_USERNAME} /home/${UCI_USERNAME}

USER ${UCI_USERNAME}
WORKDIR /home/${UCI_USERNAME}

CMD [ "/bin/bash", "--login" ]
