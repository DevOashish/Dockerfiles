# Use an existing image as a base
FROM nginx:latest
RUN yum install nginx -y
LABEL AUTHOR="Ashish" \
          COURSE="DOCKER" \ 
RUN rm -rf /usr/share/nginx/html/index.html
COPY qi /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]          
