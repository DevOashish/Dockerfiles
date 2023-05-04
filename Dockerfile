# Use an existing image as a base
FROM almalinux:latest
RUN yum install nginx -y
ADD https://raw.githubusercontent.com/trussworks/terraform-aws-s3-private-bucket/main/main.tf /tmp/
ADD apache-tomcat-9.0.73-embed.tar.gz /tmp/





 