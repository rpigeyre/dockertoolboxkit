@echo off
echo "[+] Starting DockerToolKit"
cd ..\resources

rem Start
rem docker-compose start nexus proxy
docker-compose start nexus

pause