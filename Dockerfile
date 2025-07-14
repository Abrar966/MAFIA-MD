FROM node:lts-buster

# Set working directory
WORKDIR /app

# Copy local files to Docker container
COPY . .

# Install dependencies
RUN npm install && npm install -g pm2

# Expose bot's port (if needed)
EXPOSE 9090

# Start bot
CMD ["npm", "start"]
