FROM gitpod/workspace-full

USER root

RUN apt-get update && apt-get upgrade -y

RUN apt-get install make

RUN export VERSION=3.7.4 && \
    wget https://github.com/sylabs/singularity/releases/download/v${VERSION}/singularity-${VERSION}.tar.gz && \
    tar -xzf singularity-${VERSION}.tar.gz
    
RUN cd singularity \
    ./mconfig && \
    make -C ./builddir && \
    sudo make -C ./builddir install
