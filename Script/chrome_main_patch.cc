// chrome_main_patch.cc
#include "splash_screen.cc"
#include "chrome/app/chrome_main.h"

int ChromeMainWithSplash(const content::MainFunctionParams& parameters) {
    ShowSplash(); // نمایش اسپش
    return ChromeMain(parameters); // ادامه اجرای اصلی مرورگر
}
