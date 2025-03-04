FROM alpine:latest
RUN apk update
RUN apk add sing-box curl nano
RUN apk add wireguard-tools-wg-quick
RUN apk add wireguard-tools-openrc
RUN mkdir -p /etc/wireguard/
CMD ["sing-box", "run", "-C", "/etc/sing-box/"]