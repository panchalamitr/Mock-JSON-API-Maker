# Mock JSON API Maker

This is a Docker image that provides a simple JSON API for testing and development purposes. It can be used to simulate a backend service that responds with a JSON payload.
Usage

To use this Docker image, you can run the following command:

`docker run -e JSON_RESPONSE='{"message": "Hello Worlds"}' -p 80:80 panchalamitr/mockjsonapi`

This will start a container and expose port 80 to the host machine.
You will get public url, like below

Ngrok URL: http://2f6e-172-10-181-258.ngrok.io

## Response

When you access the API, it will return the JSON response that you specified when starting the container. For example, if you used the command above, you will see the following response:

`{"message": "Hello Worlds"}`

## Note

The API is exposed over a publicly accessible URL which may not be secure for production usage. Please use it only for development and testing purposes.

Thank you for using this Docker image!
