FROM debian:jessie

RUN apt-get update \
 && apt-get install -y --no-install-recommends ca-certificates curl git-core httpie \
 && rm -rf /var/lib/apt/lists/*

RUN alias l="ls -la"

ENTRYPOINT ["/bin/bash"]
