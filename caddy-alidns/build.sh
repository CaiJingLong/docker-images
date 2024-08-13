CADDY_VERSION=$1

if [ -z "$CADDY_VERSION" ]; then
  echo "CADDY_VERSION is required"
  echo "Usage: $0 <CADDY_VERSION>"
  exit 1
fi

docker build -t kikt69/caddy:v${CADDY_VERSION}-alidns --build-arg CADDY_VERSION=$CADDY_VERSION .
docker push kikt69/caddy