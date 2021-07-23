FROM gitpod/workspace-full

USER root

RUN export VERSION=3.8.1 && # adjust this as necessary; this is latest \
    wget https://github.com/sylabs/singularity/releases/download/v${VERSION}/singularity-${VERSION}.tar.gz && \
    tar -xzf singularity-${VERSION}.tar.gz && \
    cd singularity \
    ./mconfig && \
    make -C builddir && \
    sudo make -C builddir install
