# Use an existing image as a base
FROM almalinux:latest
RUN yum install nginx -y
RUN rm -rf /usr/share/nginx/html/index.html
ADD https://raw.githubusercontent.com/trussworks/terraform-aws-s3-private-bucket/main/main.tf /tmp/
ADD apache-tomcat-9.0.73-embed.tar.gz /tmp/
CMD ["nginx", "-g", "daemon off;"]



 