# Start with an old and vulnerable version of a base image
FROM node:6.17.1

# Install an outdated and vulnerable package
RUN apt-get update && apt-get install -y \
    wget=1.16-1 \
    curl=7.47.0-1+deb9u3 \
    git=1:2.1.4-2.1+deb8u7 \
    openssl=1.0.2g-1ubuntu4.15

# Copy application source
COPY . /app

# Set the working directory
WORKDIR /app

# Expose a common ports
EXPOSE 80
EXPOSE 22
EXPOSE 23
EXPOSE 53
EXPOSE 20
EXPOSE 21
EXPOSE 25

# Run an application with known vulnerabilities
CMD ["node", "vulnerable-app.js"]
