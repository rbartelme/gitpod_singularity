FROM gitpod/workspace-full

USER root

RUN apt-get update && apt-get upgrade -y

RUN go get -u github.com/golang/dep/cmd/dep

RUN go get -d github.com/sylabs/singularity
