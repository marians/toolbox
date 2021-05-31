FROM debian:buster

RUN apt-get update \
 && apt-get install -y --no-install-recommends ca-certificates curl dnsutils git-core httpie jq python3-pip netcat telnet \
 && rm -rf /var/lib/apt/lists/* \
 && pip3 install yq

# Installing gsctl
RUN GSCTL_VERSION=1.1.0 \
 && curl -s -L -O https://github.com/giantswarm/gsctl/releases/download/${GSCTL_VERSION}/gsctl-${GSCTL_VERSION}-linux-amd64.tar.gz \
 && tar xzf gsctl-${GSCTL_VERSION}-linux-amd64.tar.gz \
 && cp gsctl-${GSCTL_VERSION}-linux-amd64/gsctl /usr/local/bin/ \
 && rm -rf gsctl*

RUN alias l="ls -la"

ENTRYPOINT ["/bin/bash"]
