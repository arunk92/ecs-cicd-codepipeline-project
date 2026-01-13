FROM nginx:1.25-alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy website
COPY app/ /usr/share/nginx/html/

# Expose port
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
