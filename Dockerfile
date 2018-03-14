FROM openshift/base-centos7

ENV PORT 8080
ENV X=8084 R=8085-8086
ARG ARG_PORT

ADD run.sh .

# expose range, env and regular port
EXPOSE 8081-8082 "$PORT" 8083 "$X" $R $ARG_PORT

ENTRYPOINT ["./run.sh"]
