FROM n8nio/n8n:latest

# Set working directory
WORKDIR /data

# Install additional dependencies if needed (optional)
# RUN apk add --no-cache <your-dependencies>

# Expose default n8n port
EXPOSE 5678

# Environment variables (adjust as needed)
ENV N8N_BASIC_AUTH_ACTIVE=true \
    N8N_BASIC_AUTH_USER=admin \
    N8N_BASIC_AUTH_PASSWORD=admin \
    WEBHOOK_TUNNEL_URL=https://n8n-render-blueprint-wp1b.onrender.com \
    N8N_HOST=0.0.0.0 \
    N8N_PORT=5678 \
    N8N_PROTOCOL=http

# Start n8n
CMD ["n8n"]
