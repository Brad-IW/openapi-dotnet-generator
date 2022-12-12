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

http://localhost/BIAN-3/BIAN/CurrentAccount/11.0.0/CurrentAccount/currentaccountid/Interest/interestid/Retrieve
