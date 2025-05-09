# Dockerfile

FROM node:22

# Set working directory
WORKDIR /app

# Copy package.json and lock file
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the port your app listens on
EXPOSE 5000

# Run tests (optional step)
# RUN npm run check

# Start the app
CMD ["npm", "start"]