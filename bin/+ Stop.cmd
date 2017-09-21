@echo off
echo "[+] Stopping DockerToolKit"
cd ..\resources

rem Stop
docker-compose stop nexus proxy

pause