#!/bin/bash
# Remove unused Chromium components and configure GN args

cd src || exit 1

# حذف ماژول‌های غیرضروری
rm -rf chrome/test chrome/browser/devtools chrome/browser/signin \
chrome/browser/sync chrome/browser/translate components/sync components/translate \
components/metrics components/spellcheck components/nacl components/webrtc components/variations \
components/pdf components/signin components/printing content/browser/devtools \
third_party/widevine third_party/angle third_party/cld_3 third_party/hunspell \
third_party/devtools-frontend third_party/speech-dispatcher third_party/libaddressinput \
third_party/libphonenumber third_party/libxml third_party/mozilla third_party/pywebsocket \
tools/metrics services/identity services/network/public/mojom google_apis google_update

# حذف زبان‌های غیرانگلیسی
rm -rf out/Nexa/locales/*
cp out/Nexa/locales/en-US.pak out/Nexa/locales/

# args.gn بهینه
cat <<EOF > out/Nexa/args.gn
is_debug = false
is_component_build = false
symbol_level = 0
strip_debug_info = true
optimize_webui = true
compress_pak_files = true
enable_nacl = false
enable_webrtc = false
enable_spellcheck = false
enable_metrics = false
use_google_api_keys = false
is_official_build = true
dcheck_always_on = false
EOF

# ساخت مرورگر
gn gen out/Nexa
autoninja -C out/Nexa chrome

# فشرده‌سازی
strip out/Nexa/chrome
brotli -f -q 11 out/Nexa/chrome -o out/Nexa/chrome.br
