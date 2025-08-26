# Use official Node.js 18 image as the base
FROM node:18

# Set working directory inside container
WORKDIR /usr/src/app

# Copy only package.json and package-lock.json first to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app source code
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Start the app using npm start
CMD ["npm", "start"]

