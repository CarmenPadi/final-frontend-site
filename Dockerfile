# Use an official Node.js runtime as a parent image
FROM node:14

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json if you have them (skip if you don't)
# COPY package*.json ./

# Copy everything from current directory to working directory
COPY . .

# Expose port 80 (or whatever your app uses)
EXPOSE 80

# Use a simple HTTP server to serve the static files
RUN npm install -g serve

# Start the server to serve your static site
CMD ["serve", "-s", ".", "-l", "80"]
