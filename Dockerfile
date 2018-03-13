FROM openshift/base-centos7

ENV PORT 8080

ADD run.sh .

# expose range, env and regular port
EXPOSE 8081-8082 "$PORT" 8083

ENTRYPOINT ["./run.sh"]
