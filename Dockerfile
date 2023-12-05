# Start with an old version of a base image
FROM ubuntu:14.04

# Install outdated packages
RUN apt-get update && apt-get install -y \
    python=2.7 \
    openssl=1.0.1f-1ubuntu2

# Copy application source
COPY . /app

# Set the working directory
WORKDIR /app

# Expose a common web port
EXPOSE 80

# Run a basic HTTP server (Python 2 SimpleHTTPServer is known to be insecure)
CMD ["python", "-m", "SimpleHTTPServer", "80"]
