FROM google/cloud-sdk:alpine
RUN curl -L https://storage.googleapis.com/kubernetes-helm/helm-v2.4.2-linux-386.tar.gz | tar xz && mv linux-amd64/helm /bin/helm && rm -rf linux-amd64 \
