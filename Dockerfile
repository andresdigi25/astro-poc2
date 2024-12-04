# Use Node.js as the base image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the entire project
COPY . .

# Expose port 3000 for the development server
EXPOSE 3000

# Command to run the Astro dev server
CMD ["npm", "run", "dev"]
