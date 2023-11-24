# Stage 1: Build the application
FROM node:18.16.0-alpine AS build
WORKDIR ./app

# Install a specific version of npm globally
RUN npm install -g npm@9.5.1

# Run npm install with a timeout
RUN npm install --timeout=60000

# Copy package.json and package-lock.json to cache dependencies installation
COPY ./app/package*.json ./
RUN npm install

# Copy the entire application
COPY --chown=node:node . ./


# Build the application
RUN npm run build

# Stage 2: Create a lightweight production image
FROM node:18.16.0-alpine AS production
WORKDIR /app

# Copy only necessary files from the build stage
COPY --from=build /app/node_modules ./node_modules
COPY --from=build /app/.nuxt ./.nuxt
COPY --from=build /app/nuxt.config.js ./nuxt.config.js

# Expose the port that Nuxt.js will run on
EXPOSE 3000

# Start the Nuxt.js application
CMD ["npm", "start"]
