FROM openjdk:8

ENV SEATUNNEL_VERSION="2.3.3"
ENV SEATUNNEL_HOME="/opt/seatunnel"

ENV SEATUNNEL_WEB_VERSION="1.0.1"
ENV SEATUNNEL_WEB_HOME="/opt/seatunnel-web"

RUN wget https://dlcdn.apache.org/seatunnel/${SEATUNNEL_VERSION}/apache-seatunnel-${SEATUNNEL_VERSION}-bin.tar.gz
RUN tar -xzvf apache-seatunnel-${SEATUNNEL_VERSION}-bin.tar.gz
RUN mv apache-seatunnel-${SEATUNNEL_VERSION} ${SEATUNNEL_HOME}
RUN mkdir -p $SEATUNNEL_HOME/logs
RUN cd ${SEATUNNEL_HOME} || sh bin/install-plugin.sh ${SEATUNNEL_VERSION}

RUN wget https://dlcdn.apache.org/seatunnel/seatunnel-web/${SEATUNNEL_WEB_VERSION}/apache-seatunnel-web-${SEATUNNEL_WEB_VERSION}-bin.tar.gz
RUN tar -xzvf apache-seatunnel-web-${SEATUNNEL_WEB_VERSION}-bin.tar.gz
RUN mv apache-seatunnel-web-${SEATUNNEL_WEB_VERSION}-bin ${SEATUNNEL_WEB_HOME}
RUN cd ${SEATUNNEL_HOME} && ls -l -h -a && sh bin/install-plugin.sh ${SEATUNNEL_VERSION}
