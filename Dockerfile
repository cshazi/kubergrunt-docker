FROM jshimko/kube-tools-aws:3.5.0

ENV KUBERGRUNT_VERSION=0.6.10

ADD https://github.com/gruntwork-io/kubergrunt/releases/download/v${KUBERGRUNT_VERSION}/kubergrunt_linux_amd64 /usr/local/bin/kubergrunt
RUN chmod +x /usr/local/bin/kubergrunt

CMD bash
