FROM docker:20.10.22-dind-alpine3.17 AS runner
  LABEL maintainer="Airscript <francesco@airscript.it>"
  WORKDIR /home
  COPY . .

  RUN \
    sh scripts/update.sh && \
    sh scripts/install/bash.sh && \
    bash scripts/install/make.sh && \
    make install-npm && \
    make install-python3 && \
    make install-g++ && \
    make install-devcontainers-cli