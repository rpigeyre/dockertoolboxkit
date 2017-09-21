@echo off
echo "[+] Installing DockerToolKit"
cd ..\resources

rem Create volumes
docker volume create --name=nexus-data
docker volume create --name=ssl-data

rem Build
docker-compose build

rem Start
docker-compose up -d nexus proxy
timeout 5
docker-compose up config-nexus

pause