#!/bin/bash
# Strip and compress final executable

strip out/Nexa/chrome
brotli -f -q 11 out/Nexa/chrome -o out/Nexa/chrome.br
