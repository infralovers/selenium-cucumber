ARG SELENIUM_BASE
# hadolint ignore=DL3006
FROM $SELENIUM_BASE

USER root

# hadolint ignore=DL3013,DL3008,DL3015
RUN apt-get update -q \
    && apt-get install -y ruby-full \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER seluser
