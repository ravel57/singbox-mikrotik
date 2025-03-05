FROM ghcr.io/sagernet/sing-box:v1.11.4 AS singbox

FROM alpine:latest
COPY --from=singbox /usr/local/bin/sing-box /usr/local/bin/sing-box
RUN apk update
RUN apk add --no-cache bash openrc curl nano wireguard-tools-wg-quick wireguard-tools-openrc
RUN mkdir -p /etc/wireguard/
CMD ["sing-box", "run", "-C", "/etc/sing-box/"]