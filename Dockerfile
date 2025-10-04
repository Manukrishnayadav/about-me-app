# Use official Node.js LTS image
FROM node:24

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy all project files
COPY . .

# Run tests (optional, remove if you handle tests in Jenkins)
# RUN npm test

# Expose the port your app runs on
EXPOSE 3000

# Default command to run your app
CMD ["node", "app.js"]
