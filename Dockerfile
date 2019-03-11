FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf.template

CMD envsubst < /etc/nginx/nginx.conf.template > /tmp/nginx.conf && nginx -g 'daemon off;' -c /tmp/nginx.conf

EXPOSE 8080
