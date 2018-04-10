FROM ubuntu

# https://docs.docker.com/engine/reference/builder/#env
# https://docs.docker.com/engine/reference/builder/#environment-replacement
ENV X=8084 RANGE=8084-8086


ADD run.sh .

# expose range, env and regular port
# exp   8080     8081    8083 8084  8085     8087       8090      8091      8092      8092     8093      8094   warn and ignore for both     8100/udp           8101/udp
EXPOSE "$X" "$RANGE"

# shouldn't take into account in previous EXPOSE
# env $PORT should evaluate to 8080 there
ENV PORT 10

ENTRYPOINT ["./run.sh"]
