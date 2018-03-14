FROM openshift/base-centos7

ENV R3=8087
ENV R2="$R3"
ENV R1=$R2
ENV PORT 8080
ENV X=8084 RANGE=8085-8086 RECURSIVE="$R1"
ARG ARG_PORT=8090

ADD run.sh .

# expose range, env and regular port
# exp   8080     8081    8083 8084  8085     8087       8090    
EXPOSE "$PORT" 8081-8082 8083 "$X" $RANGE $RECURSIVE $ARG_PORT 

# shouldn't take into account in previous EXPOSE
# env $PORT should evaluate to 8080 there
ENV PORT 10

ENTRYPOINT ["./run.sh"]
