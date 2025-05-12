#!/bin/bash
# Build mini_installer.exe using GN/Ninja

gn gen out/NexaInstaller --args='is_official_build=true is_component_build=false symbol_level=0'
autoninja -C out/NexaInstaller mini_installer
