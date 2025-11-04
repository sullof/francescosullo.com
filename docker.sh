docker stop francescosullo-com 2>/dev/null || true
docker rm francescosullo-com 2>/dev/null || true

docker run --name francescosullo-com \
  -p 8040 \
  --restart unless-stopped \
  -e VIRTUAL_HOST=francescosullo.com,www.francescosullo.com,sullo.co,francesco.sullo.co,www.sullo.co  \
  -e LETSENCRYPT_HOST=francescosullo.com,www.francescosullo.com,sullo.co,francesco.sullo.co,www.sullo.co \
  -e LETSENCRYPT_EMAIL=francescosullo@sameteam.co \
  -v `pwd`/html:/usr/share/nginx/html:ro -d nginx
