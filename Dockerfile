# Use an official Node.js image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first for dependency installation
COPY src/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY src/ .

# Expose the port the app runs on
EXPOSE 3000

# Run the app
CMD ["node", "server.js"]

