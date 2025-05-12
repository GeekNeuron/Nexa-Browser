#!/bin/bash
# حذف DevTools و فعال‌سازی تنظیمات بهینه برای build سبک‌تر

rm -rf third_party/devtools-frontend chrome/browser/devtools content/browser/devtools

cat <<EOF > out/Nexa/args.gn
strip_debug_info = true
optimize_webui = true
compress_pak_files = true
EOF

gn gen out/Nexa
autoninja -C out/Nexa chrome
