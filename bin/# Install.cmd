@echo off
echo "[+] Installing DockerToolKit"
cd ..\resources

rem Create volumes
docker volume create --name=nexus-data
rem docker volume create --name=ssl-data

rem Build
docker-compose build

rem Start
rem docker-compose up -d nexus proxy
docker-compose up -d nexus
timeout 5
docker-compose up config-nexus

pause