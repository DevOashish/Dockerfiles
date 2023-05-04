# Use an existing image as a base
FROM nginx:latest
RUN yum install nginx -y
LABEL AUTHOR="Ashish" \
          COURSE="DOCKER" \
EXPOSE 80
RUN rm -rf /usr/share/nginx/html/index.html
COPY qi /usr/share/nginx/html/
CMD ["nginx", "-g", "daemon off;"]          
