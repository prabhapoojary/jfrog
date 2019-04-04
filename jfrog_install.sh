#!/bin/bash
mkdir jfrog
cd jfrog
wget https://akamai.bintray.com/10/10a1a5caa24b3a8d76b34b9696cf6577ef48c36c806b41802b0b12586b70a6c3?__gda__=exp=1554374746~hmac=67f8aed1422ba727252e0724e5a34b5190077a9d34cf2bbd715c19e7499a3f24&response-content-disposition=attachment%3Bfilename%3D%22jfrog-artifactory-oss-6.9.0.zip%22&response-content-type=application%2Foctet-stream&requestInfo=U2FsdGVkX1-4zm3s6iujlHqaxsjnmgK4JxYmoezOtwwWsvPw5oBVFw0Qhg3eJz8mkvi_AYbUxFNZD0xywLkPYqfSMcz36pmRPBiD60aX0BXm11VKwpGUslUp_yNhJ0PLKjyZughTkwjTxROr1thbK_NzoavzwFZcriTwQJA_D20&response-X-Checksum-Sha1=ac953c65ffa4cc76707557f4b8a8039f3e851044&response-X-Checksum-Sha2=10a1a5caa24b3a8d76b34b9696cf6577ef48c36c806b41802b0b12586b70a6c3
apt-get update
apt-get -y upgrade
echo "installing java"
add-apt-repository ppa:webupd8team/java
apt-get update
apt-get -y install oracle-java8-installer
java -version
ls
mv <dowloadedpackage> jfrog-artifactory-oss-6.9.0.zip
unzip jfrog-artifactory-oss-6.9.0.zip
cd artifactory-oss-6.9.0/bin/
sh artifactory.sh &
ps -ef | grep jfrog
