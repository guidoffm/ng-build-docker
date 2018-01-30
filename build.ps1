#docker build --build-arg HTTP_PROXY=$env:HTTP_PROXY --build-arg HTTPS_PROXY=$env:HTTPS_PROXY .

[System.Environment]::SetEnvironmentVariable('DOCKER_HOST',$null,'process')
[System.Environment]::SetEnvironmentVariable('DOCKER_TLS_VERIFY',$null,'process')

docker build -t tst1 .