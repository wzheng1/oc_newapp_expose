FROM ubuntu

# https://docs.docker.com/engine/reference/builder/#env
# https://docs.docker.com/engine/reference/builder/#environment-replacement

ADD run.sh .

FROM centos
ENV port=8080
EXPOSE $port
ENV port=8081
EXPOSE $port

ENTRYPOINT ["./run.sh"]
