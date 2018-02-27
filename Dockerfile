FROM docker:17.12.0-ce as static-docker-source

FROM google/cloud-sdk:alpine 
COPY --from=static-docker-source /usr/local/bin/docker /usr/local/bin/docker
RUN curl -L https://storage.googleapis.com/kubernetes-helm/helm-v2.4.2-linux-amd64.tar.gz | tar xz && mv linux-amd64/helm /bin/helm && rm -rf linux-amd64 \
