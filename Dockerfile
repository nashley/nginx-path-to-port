FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf.template

CMD envsubst < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'

EXPOSE 80 8080
