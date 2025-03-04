FROM alpine:latest
RUN apk update
RUN apk add --no-cache bash openrc sing-box curl nano wireguard-tools-wg-quick wireguard-tools-openrc
RUN mkdir -p /etc/wireguard/
CMD ["sing-box", "run", "-C", "/etc/sing-box/"]