FROM debian:jessie

RUN apt-get update \
 && apt-get install -y --no-install-recommends ca-certificates curl git-core httpie jq python-pip \
 && rm -rf /var/lib/apt/lists/* \
 && pip install yq

RUN alias l="ls -la"

ENTRYPOINT ["/bin/bash"]
