FROM python:3.9.10-slim-buster
WORKDIR /app
RUN set -e && \
  apt-get update -y && \
  apt install -y apt-transport-https curl gnupg && \
  curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor > bazel.gpg && \
  mv bazel.gpg /etc/apt/trusted.gpg.d/ && \
  echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list && \
  apt update -y && \
  apt install -y bazel bazel-4.0.0
COPY .bazelrc .bazelrc
COPY WORKSPACE WORKSPACE
COPY src src
# for caching
RUN set -e && \
   bazel --output_user_root=/app/output build //src:example

