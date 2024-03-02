FROM nginx:latest
RUN  sed -i 's/nginx/nicolas/g' /usr/share/nginx/html/index.html
EXPOSE 80

