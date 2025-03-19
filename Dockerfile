# Use Node.js Alpine base image
FROM node:alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json package-lock.json /app/

# Clean npm cache
RUN npm cache clean --force

# Install dependencies
RUN npm install --legacy-peer-deps  # Try adding --legacy-peer-deps

# Copy the full codebase
COPY . /app/

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
