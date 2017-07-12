FROM debian:wheezy

RUN apt-get update \
 && apt-get install -y --no-install-recommends curl httpie ca-certificates \
 && rm -rf /var/lib/apt/lists/*

RUN alias l="ls -la"

ENTRYPOINT ["/bin/bash"]
