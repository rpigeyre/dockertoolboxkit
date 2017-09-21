@echo off
echo "[+] Stopping DockerToolKit"
cd ..\resources

rem Stop
rem docker-compose stop nexus proxy
docker-compose stop nexus

pause