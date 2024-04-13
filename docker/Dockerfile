FROM java8:latest

ENV MYCAT_FILE Mycat-server-1.6.7.6-release-20220524173810-linux.tar.gz
ENV MYCAT_DIR /usr/local/

#RUN sed -i "s@http://.*archive.ubuntu.com@http://mirrors.aliyun.com@g" /etc/apt/sources.list
#RUN sed -i "s@http://.*security.ubuntu.com@http://mirrors.aliyun.com@g" /etc/apt/sources.list

RUN buildDeps='procps wget unzip' \
    && apt-get update \
    && apt-get install -y $buildDeps

ADD ./$MYCAT_FILE $MYCAT_DIR
RUN cd $MYCAT_DIR && chmod +x ./mycat/bin/*

VOLUME /usr/local/mycat/conf
VOLUME /usr/local/mycat/logs

EXPOSE 8066 1984 9066
CMD ["/usr/local/mycat/bin/mycat", "console"]