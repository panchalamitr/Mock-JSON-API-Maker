#!/bin/sh

# Start ngrok in the background
ngrok http 80 &

# Wait for ngrok to start up
sleep 5

# Get the public URL of the ngrok tunnel
NGROK_URL=$(curl -s http://localhost:4040/api/tunnels | jq -r .tunnels[0].public_url)

# Print the ngrok URL to the console
echo "Ngrok URL: $NGROK_URL"

# Start the Flask app in the background
python3 /app.py &
