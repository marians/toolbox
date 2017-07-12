FROM debian:jessie

RUN apt-get update \
 && apt-get install -y --no-install-recommends ca-certificates curl git-core httpie jq python-pip \
 && rm -rf /var/lib/apt/lists/* \
 && pip install yq

# Installing gsctl
RUN GSCTL_VERSION=$(curl -s http://downloads.giantswarm.io/gsctl/VERSION) \
 && curl -O http://downloads.giantswarm.io/gsctl/${GSCTL_VERSION}/gsctl-${GSCTL_VERSION}-linux-amd64.tar.gz \
 && tar xzf gsctl-${GSCTL_VERSION}-linux-amd64.tar.gz \
 && cp gsctl-${GSCTL_VERSION}-linux-amd64/gsctl /usr/local/bin/ \
 && rm -rf gsctl*

RUN alias l="ls -la"

ENTRYPOINT ["/bin/bash"]
