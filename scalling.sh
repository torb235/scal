cd /tailscale
./tailscaled --tun=userspace-networking --socks5-server=localhost:1055 & ./tailscale up --authkey=${TAILSCALE_AUTHKEY}
ALL_PROXY=socks5://localhost:1055/

