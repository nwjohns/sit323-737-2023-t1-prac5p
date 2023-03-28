# Use the Node.js image as the base image
FROM node:latest

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files into the container
COPY package*.json ./

# Install the dependencies using Node.js
RUN npm install

# Copy the rest of the application files into the container
COPY . .

# Open port 3000
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
