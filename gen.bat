set projectName=gen

java -jar ./openapi-generator-cli.jar generate ^
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