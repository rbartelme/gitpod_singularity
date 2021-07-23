FROM gitpod/workspace-full

USER gitpod

RUN apt-get update && apt-get upgrade -y

RUN brew install dep