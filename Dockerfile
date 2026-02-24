# Use nginx as the base image (lightweight web server)
FROM nginx:alpine

# Copy your HTML/JS files to nginx's web directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# nginx starts automatically, no CMD needed
