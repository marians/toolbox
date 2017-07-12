FROM debian:wheezy

RUN apt-get update && \
    apt-get install -y --no-install-recommends curl httpie ca-certificates

RUN alias l="ls -la"

ENTRYPOINT ["/bin/bash"]
