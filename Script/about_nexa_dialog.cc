// about_nexa_dialog.cc
#include <windows.h>

void ShowAboutNexaDialog() {
    MessageBox(NULL, L"Nexa Browser\nBased on Chromium\nVersion: 1.0.0", L"About Nexa", MB_OK | MB_ICONINFORMATION);
}
