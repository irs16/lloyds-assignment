# Specify the Node.js base image with your desired version
FROM node:20

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY src/package*.json ./

# Install dependencies
RUN npm install

# Copy your application code to the container
COPY src/server.js ./

EXPOSE 9080

# Specify the command to run your Node.js app
CMD ["node", "server.js"]
