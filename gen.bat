if "%~1"=="" goto missing_generator

set projectName=gen

java -jar %1 generate ^
    -i ./CurrentAccount.yaml ^
    -g aspnetcore ^
    -o ./%projectName% ^
    --additional-properties=aspnetCoreVersion=6.0 ^
    --additional-properties=packageName=BIANAPI

cd %projectName%
call ./build.bat

cd ..

xcopy /g /Y .\Dockerfile .\%projectName%\src\BIANAPI\Dockerfile

docker compose build

exit /b 0

:missing_generator
echo Please provide the path to the `openapi-generator-cli.jar` file as the first parameter to this file.
