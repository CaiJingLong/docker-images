ARG CADDY_VERSION

FROM caddy:${CADDY_VERSION}-builder AS builder

RUN xcaddy build \
  --with github.com/caddy-dns/alidns

FROM caddy:${CADDY_VERSION}

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile"]