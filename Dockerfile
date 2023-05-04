# Use an existing image as a base
FROM nginx:latest

# Copy files into the image
COPY index.html /usr/share/nginx/html

# Start the web server
CMD ["nginx", "-g", "daemon off;"]
