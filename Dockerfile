FROM openshift/base-centos7

ENV R2=8087
ENV R1=$R2
ENV PORT 8080
ENV X=8084 R=8085-8086 RECURSIVE="$R1"
ARG ARG_PORT

ADD run.sh .

# expose range, env and regular port
# expected 8081 8080 8083 8084 8085 [build_cmd_line_arg_val] 8087
EXPOSE 8081-8082 "$PORT" 8083 "$X" $R $ARG_PORT $RECURSIVE

# shouldn't take into account in previous EXPOSE
# env $PORT should evaluate to 8080 there
ENV PORT 10

ENTRYPOINT ["./run.sh"]
