@echo off
echo Starting Sentinel Targets: 7010-7011
pushd %~dp0\Sentinel
@start "Redis (Sentinel-Target): 7010" /min ..\3.0.503\redis-server.exe redis-7010.conf
@start "Redis (Sentinel-Target): 7011" /min ..\3.0.503\redis-server.exe redis-7011.conf
echo Starting Sentinel Monitors: 26379-26380
@start "Redis (Sentinel): 26379" /min ..\3.0.503\redis-server.exe sentinel-26379.conf --sentinel
@start "Redis (Sentinel): 26380" /min ..\3.0.503\redis-server.exe sentinel-26380.conf --sentinel
popd