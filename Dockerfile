# Step 1: Use a base image with an HTTP server
FROM nginx:alpine

# Step 2: Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Step 3: Copy all the files from your current directory to the working directory in the container
COPY . .

# Step 4: Expose port 80 to the host
EXPOSE 8080

# Step 5: The default command to run the server
CMD ["nginx", "-g", "daemon off;"]
