# OpenAPI BIAN Generator

## Installation Instructions (Windows only)

The following instructions requires a Windows computer with [Docker](https://docs.docker.com/get-docker/) installed.

1. Download the `openapi-generator-cli.jar` file by going to the OpenAPI Generator [GitHub](https://github.com/OpenAPITools/openapi-generator#13---download-jar) and downloading the latest stable jar.
2. Clone this repo and extract it into your folder of choice.
3. Open a PowerShell or Command Prompt terminal in the folder.
4. Run `./gen.bat` followed by the path to downloaded openapi generator.

    e.g. `e.g. ./gen.bat ./openapi-generator-cli.jar` if the generator is in the same directory as the cloned files

5. Run `docker compose up -d` to start the API in the background.

    The API will now be available on port 80.

## Test Plan

This optional test plan will walk you through setting up the provided Postman collection to test the API stubs.

1. Open your Postman workspace.
2. Click import and select the provided `OpenAPIGenerator.postman_collection.json` file.
3. Ensure the selection and get request are checked, then press import.
4. Open the environment editor and add a new environment.
5. Add a new key value pair with `server` as the key and the ip address of the device running the container (`localhost` if running from the same machine).
6. Click on the Get BIAN Test request and hit send. This should return a 200 OK response along with some dummy data.
