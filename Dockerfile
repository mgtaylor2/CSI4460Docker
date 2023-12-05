# Use an outdated and vulnerable version of an HTTP server
FROM httpd:2.2

# Copy a simple HTML file into the container (make sure this file exists in your repo)
COPY index.html /usr/local/apache2/htdocs/

# The file 'index.html' should be a simple HTML file but the vulnerability lies in the server itself

# Expose the default HTTP port
EXPOSE 80

# Default command to run Apache in the foreground
CMD ["httpd-foreground"]
