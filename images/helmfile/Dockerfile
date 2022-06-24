FROM alpine:3.8 as base

ARG HELMFILE_VERSION="v0.138.7"

WORKDIR /custom-tools


RUN wget -qO /custom-tools/argo-cd-helmfile.sh https://raw.githubusercontent.com/travisghansen/argo-cd-helmfile/master/src/argo-cd-helmfile.sh && \
          chmod +x /custom-tools/argo-cd-helmfile.sh && \
          wget -qO /custom-tools/helmfile https://github.com/roboll/helmfile/releases/download/$HELMFILE_VERSION/helmfile_linux_amd64 && \
          chmod +x /custom-tools/helmfile
