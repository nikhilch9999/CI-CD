FROM nginx:latest

RUN rem -rf /usr/share/nginx/html/*

COPY web.html /usr/share/nginx/html

RUN service restart nginx
