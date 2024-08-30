# Use the official Frappe base image
FROM frappe/erpnext-worker:latest

# Set environment variables (customize these as needed)
ENV FRAPPE_ENV production
ENV SITE_NAME your-site-name
ENV DB_HOST your-database-host
ENV DB_PORT 3306
ENV DB_USER your-database-user
ENV DB_PASSWORD your-database-password
ENV REDIS_CACHE your-redis-cache-host
ENV REDIS_QUEUE your-redis-queue-host
ENV REDIS_SOCKETIO your-redis-socketio-host
ENV HOSTNAME your-hostname

# Copy your application files (if needed)
# COPY ./path/to/your/app /home/frappe/frappe-bench/apps/your-app

# Install any additional dependencies (if needed)
# RUN apt-get update && apt-get install -y your-dependencies

# Start the ERPNext application
CMD ["frappe", "start"]
