FROM java
MAINTAINER jack
RUN apt-get update
RUN apt-get install -y wget

RUN cd /

RUN wget http://apache.stu.edu.tw/tomcat/tomcat-7/v7.0.109/bin//apache-tomcat-7.0.109.tar.gz

RUN tar zxvf apache-tomcat-7.0.109.tar.gz

CMD ["/apache-tomcat-7.0.109/bin/catalina.sh", "run"]

EXPOSE 8080