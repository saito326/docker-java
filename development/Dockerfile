# openjdk11のイメージを利用。
FROM openjdk:11
 
# ローカルのソースコードをマウントするためのディレクトリを作成。
RUN mkdir /opt/project
 
# tomcatをダウンロードして/usr/localに配置、mavenもインストールしておく。
RUN apt-get update && \
    apt-get -y install maven && \
    curl -sL https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.71/bin/apache-tomcat-9.0.71.tar.gz \
    | tar zx -C /usr/local