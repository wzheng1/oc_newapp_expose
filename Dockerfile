FROM openshift/base-centos7

ENV PORT 8080
ENV X=8084 R=8085-8086

ADD run.sh .

# expose range, env and regular port
EXPOSE 8081-8082 "$PORT" 8083 "$X" $R

ENTRYPOINT ["./run.sh"]
