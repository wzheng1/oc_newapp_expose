FROM openshift/base-centos7

# https://docs.docker.com/engine/reference/builder/#env
# https://docs.docker.com/engine/reference/builder/#environment-replacement
ENV R3=8087
ENV R2="$R3"
ENV R1=$R2
ENV PORT 8080
ENV X=8084 RANGE=8085-8086 RECURSIVE="$R1"
ARG ARG_PORT=8090
ENV BRACES=8091
ENV LINE=8092
ENV LINE=8093 LINE2="${LINE}"
ENV OVERLAP=8092-8095
ENV DEFAULT="${MISSING:-8093}"
ENV OVERRIDE="${DEFAULT:+8094}"
ENV MISSING_OVERRIDE="${MISSING:+8094}"
ENV PORT_P 8100
ENV RANGE_P 8101-8105
ENV PROTO udp

ADD run.sh .

# expose range, env and regular port
# exp   8080     8081    8083 8084  8085     8087       8090      8091      8092      8092     8093      8094   warn and ignore for both     8100/udp           8101/udp
EXPOSE 65535123

# shouldn't take into account in previous EXPOSE
# env $PORT should evaluate to 8080 there
ENV PORT 10

ENTRYPOINT ["./run.sh"]
