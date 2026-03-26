FROM ghcr.io/installr-io/uci:1
LABEL org.opencontainers.image.source=https://github.com/installr-io/uci

USER root

ENV UCI_JRE_DEFAULT_OPTS="\
-XX:MaxRAMPercentage=90.0 \
-XX:+ExitOnOutOfMemoryError \
-Dfile.encoding=utf8 \
-Djdk.tls.maxCertificateChainLength=15"

ENV UCI_JRE_GC_OPTS="-XX:+UseG1GC -XX:G1PeriodicGCInterval=60000"

ENV UCI_JRE_CUSTOM_OPTS=

RUN set -e; \
    ## add temurin repository
    wget -O /etc/apk/keys/adoptium.rsa.pub \
        https://packages.adoptium.net/artifactory/api/security/keypair/public/repositories/apk; \
    echo 'https://packages.adoptium.net/artifactory/apk/alpine/main' >> /etc/apk/repositories; \
    ## install needed packages
    apk --no-cache add temurin-21-jre

USER ${UCI_USERNAME}

COPY --chown=${UCI_USERID}:${UCI_USERID} home /home/${UCI_USERNAME}

ENTRYPOINT [ "bin/run-java" ]
