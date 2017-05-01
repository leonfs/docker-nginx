FROM alpine
MAINTAINER Leonardo Fernandez Sanchez <https://leonfs.com>

RUN apk --no-cache add nginx

RUN rm -rf /etc/nginx/* && \
  rm -rf /usr/share/nginx && \
  mkdir -p /run/nginx
  
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
COPY nginx.conf /etc/nginx/nginx.conf