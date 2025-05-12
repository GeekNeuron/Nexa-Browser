# Nexa-Browser

**Nexa** is a lightweight, private, de-Googled Chromium-based web browser tailored for developers and power users. This project removes unnecessary dependencies, features, and components to provide a lean, fast, and portable browsing experience.

---

## Features

- Based on the latest Chromium source
- No Google services or trackers
- Only supports English (en-US)
- Custom splash screen on launch
- About dialog with custom branding
- Designed for Windows (x64) platform
- Optimized GN build configuration for minimal output
- Supports offline/portable deployment

---

## Removed Modules

```
chrome/android
chrome/ios
chrome/test
chrome/browser/devtools
chrome/browser/signin
chrome/browser/sync
chrome/browser/translate
components/sync
components/translate
components/metrics
components/spellcheck
components/nacl
components/webrtc
components/variations
components/pdf
components/signin
components/printing
content/browser/devtools
third_party/widevine
third_party/angle
third_party/cld_3
third_party/hunspell
third_party/devtools-frontend
third_party/speech-dispatcher
third_party/libaddressinput
third_party/libphonenumber
third_party/libxml
third_party/mozilla
third_party/pywebsocket
tools/metrics
services/identity
services/network/public/mojom
google_apis
google_update
```

---

## Removed Features

- Google Sign-In
- Bookmark & settings sync
- Google Translate integration
- Spellcheck support
- WebRTC voice/video
- Native Client (NaCl)
- Widevine DRM (Netflix/DRM streaming)
- User Metrics and Telemetry
- Developer Tools and remote inspection
- Multilingual support (non-English locales)
- PDF rendering and printing
- Google auto-update
- FTP support

---

## Scripts Included

| Script | Description |
|--------|-------------|
| `nexa_setup.bat` | Clones repo, sets up `depot_tools`, and fetches Chromium |
| `nexa_minimal_cleanup.sh` | Deletes unwanted modules, configures `args.gn`, builds Nexa |
| `cleanup_and_compression.sh` | Strips debug symbols and compresses the binary with Brotli |
| `mini_installer_build.sh` | Generates a minimal installer using GN/Ninja |
| `strip_devtools_and_enable_gn_compression.sh` | Removes DevTools and applies GN optimizations |

---

## C++ UI Files

| File | Purpose |
|------|---------|
| `splash_screen.cc` | Displays a splash screen when Nexa starts |
| `about_nexa_dialog.cc` | Shows version info and branding in a dialog |
| `about_version_patch.cc` | Overrides the default `about:version` string |
| `chrome_main_patch.cc` | Injects splash display before ChromeMain() |

---

## Getting Started

1. Run `nexa_setup.bat` to fetch Chromium.
2. Run `nexa_minimal_cleanup.sh` to clean the tree and build.
3. Optionally run `mini_installer_build.sh` for a distributable installer.

Ensure `depot_tools` is in PATH and Visual Studio 2022 is installed with C++ desktop workload.

---

## License

Nexa is open-source and based on Chromium, licensed under the [BSD 3-Clause License](https://opensource.org/licenses/BSD-3-Clause).

---

**Made by GeekNeuron**

If you're cloning or contributing, check `start_here.txt` for a quick bootstrapping reference.
