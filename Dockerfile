# Use the official Python 3 image as the base image
FROM python:3-slim

# Install necessary packages
RUN apt-get update && apt-get install -y curl jq unzip

# Download and install ngrok
RUN curl -o ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && \
    unzip ngrok.zip && \
    mv ngrok /usr/local/bin && \
    rm ngrok.zip

# Install Flask
RUN pip3 install flask

# Copy the Flask app into the container
COPY app.py /app.py

# Copy the start script into the container
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expose port 80
EXPOSE 80

# Set the start script as the entry point
ENTRYPOINT ["/start.sh"]