# Use the official Node.js image as the base image
bashCopy code
FROM node:18
# Set the working directory in the container
WORKDIR /app

# Copy the application files into the working directory
COPY . /app

# Install the application dependencies
RUN npm install

##PORTS
ENV PORT 3001
EXPOSE 8080
# Define the entry point for the container
CMD ["npm", "start"]
