@echo off
REM Setup Nexa-Browser project and fetch Chromium source

git clone https://github.com/GeekNeuron/Nexa-Browser.git
cd Nexa-Browser
mkdir chromium && cd chromium

git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
set PATH=%CD%\depot_tools;%PATH%

fetch --no-history chromium
cd src
