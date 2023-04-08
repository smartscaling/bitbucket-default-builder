FROM atlassian/default-image:4@sha256:07b4477486e0ff88680da7435fdf927f9841bb78f642b121bd6cd2e54d88a9b1

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install awscli amazon-ecr-credential-helper jq -y && \
    wget -qO /usr/local/bin/yq https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 && \
    chmod a+x /usr/local/bin/yq

COPY config/ /root/