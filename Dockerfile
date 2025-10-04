# Use official Node.js LTS image
FROM node:24

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json .
RUN npm ci

# Copy all files
COPY . .

# Expose port
EXPOSE 3000

# Start server
CMD ["npm", "start"]
