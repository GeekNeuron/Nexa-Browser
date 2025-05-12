// splash_screen.cc
#include <windows.h>

int ShowSplash() {
    MessageBox(NULL, L"Welcome to Nexa Browser", L"Nexa", MB_ICONINFORMATION | MB_OK);
    return 0;
}
