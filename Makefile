# Makefile for Docker

# Define variables
IMAGE_NAME := nuxt-app
CONTAINER_NAME := nuxt-container

# Build the Docker image
build:
	docker build -t $(IMAGE_NAME) .

# Run the Docker container
run:
	docker run -p 3000:3000 --name $(CONTAINER_NAME) $(IMAGE_NAME)

# Stop and remove the Docker container
stop:
	docker stop $(CONTAINER_NAME)
	docker rm $(CONTAINER_NAME)

# Remove the Docker image
clean:
	docker rmi $(IMAGE_NAME)

# Rebuild and run the Docker container
rebuild: stop clean build run

# PHONY targets do not represent physical files
.PHONY: build run stop clean rebuild
