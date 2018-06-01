FROM openshift/base-centos7

# https://docs.docker.com/engine/reference/builder/#env
# https://docs.docker.com/engine/reference/builder/#environment-replacement

ADD run.sh .

ARG ARG_PORT
EXPOSE $ARG_PORT

ENTRYPOINT ["./run.sh"]
