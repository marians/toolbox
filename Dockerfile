FROM debian:jessie

RUN apt-get update \
 && apt-get install -y --no-install-recommends ca-certificates curl dnsutils git-core httpie jq python-pip netcat \
 && rm -rf /var/lib/apt/lists/* \
 && pip install yq

# Installing gsctl
RUN GSCTL_VERSION=0.15.0 \
 && curl -O https://github.com/giantswarm/gsctl/releases/download/${GSCTL_VERSION}/gsctl-${GSCTL_VERSION}-linux-amd64.tar.gz \
 && tar xzf gsctl-${GSCTL_VERSION}-linux-amd64.tar.gz \
 && cp gsctl-${GSCTL_VERSION}-linux-amd64/gsctl /usr/local/bin/ \
 && rm -rf gsctl*

RUN alias l="ls -la"

ENTRYPOINT ["/bin/bash"]
