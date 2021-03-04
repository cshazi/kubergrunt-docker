FROM alpine:3.12.4

ENV KUBE_VERSION=1.20.4
ENV KUBERGRUNT_VERSION=0.6.10

ADD https://storage.googleapis.com/kubernetes-release/release/v${KUBE_VERSION}/bin/linux/amd64/kubectl /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl

ADD https://github.com/gruntwork-io/kubergrunt/releases/download/v${KUBERGRUNT_VERSION}/kubergrunt_linux_amd64 /usr/local/bin/kubergrunt
RUN chmod +x /usr/local/bin/kubergrunt

ENTRYPOINT ["/usr/local/bin/kubergrunt"]
