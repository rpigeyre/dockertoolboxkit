@echo off
echo "[+] Starting DockerToolKit"
cd ..\resources

rem Start
docker-compose start nexus proxy

pause