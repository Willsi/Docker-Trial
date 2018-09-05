FROM docker.io/anapsix/alpine-java
RUN apk add wget \
&& wget 'https://updates.jenkins-ci.org/latest/jenkins.war' -O 'jenkins.war' \
&& wget http://download.jboss.org/wildfly/14.0.0.Final/wildfly-14.0.0.Final.tar.gz \
&& tar -xzf wildfly-14.0.0.Final.tar.gz \
&& mv jenkins.war /wildfly-14.0.0.Final/standalone/deployments/
ENTRYPOINT /wildfly-14.0.0.Final/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0
