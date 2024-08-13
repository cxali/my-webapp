# Use RHEL as the base image
FROM registry.access.redhat.com/ubi8/ubi:latest

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the HTML file and the image to the container
COPY index.html /usr/share/nginx/html/index.html
COPY dog.jpg /usr/share/nginx/html/dog.jpg

# Install NGINX (a web server)
RUN yum install -y nginx

# Expose port 80
EXPOSE 80

# Start NGINX when the container runs
CMD ["nginx", "-g", "daemon off;"]