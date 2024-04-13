FROM ubuntu:latest

ENV JAVA_VERSION=jdk-8u401-linux-x64.tar.gz
ENV JAVA_BASE_DIR=/usr/local
ENV JAVA_NAME=jdk1.8.0_401
ENV JAVA_DIR=${JAVA_BASE_DIR}/${JAVA_NAME}

WORKDIR ${JAVA_BASE_DIR}
ADD ./${JAVA_VERSION} .

RUN apt-get update -y \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf ${JAVA_TAR_NAME}
ENV JAVA_HOME=${JAVA_DIR}
ENV PATH=$PATH:$JAVA_HOME/bin

CMD ["/bin/bash"]
