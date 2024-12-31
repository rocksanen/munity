# Dockerfile

# Use Node.js as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install nodemon globally
RUN npm install -g nodemon

# Install all dependencies, including devDependencies
RUN npm install --legacy-peer-deps

# Copy the rest of the application files
COPY . .

# Expose the port your application uses
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]


