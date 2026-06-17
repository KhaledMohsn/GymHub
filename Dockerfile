FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
CMD ["/bin/sh", "-c", "sed -i \"s/listen  *80;/listen ${PORT:-8080};/g\" /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]