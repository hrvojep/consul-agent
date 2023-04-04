FROM consul
RUN apk add bash
RUN apk add nginx
COPY config/config-file.json /consul/config
EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 8600 8600/udp
ENV DNS_RESOLVES consul
ENV DNS_PORT 8600

COPY entrypoint.sh /entrypoint.sh
RUN chmod u+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
