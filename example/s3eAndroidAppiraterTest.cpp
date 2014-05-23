#include "IwDebug.h"
#include "IwGx.h"
#include "s3eExt.h"
#include "s3eAndroidAppirater.h"
#include "s3eOSReadString.h"
#include "s3ePointer.h"

void appiraterInit()
{
    if (s3eAndroidAppiraterAvailable() == S3E_TRUE)
    {
        int days = 0;
        int launches = 1;
        int events = 1;
        AppiraterInit("Rate BAMF!", "com.crankshaftgames.sfp", days, launches, events);
    }
}

void touchEvent(s3ePointerTouchEvent *event)
{
    if(event->m_Pressed)
    {
        AppiraterEventOccured();
    }
}

// Example showing how to use the Appirater extension
int main()
{
    s3eDebugOutputString("Booting Appirater example");

    s3ePointerRegister(S3E_POINTER_BUTTON_EVENT, (s3eCallback)touchEvent, NULL);

    IwGxInit();

    IwGxSetColClear(0, 0, 0, 0xff);

    if (!s3eAndroidAppiraterAvailable())
    {
        s3eDebugOutputString("Error: Appirater not available!");

        return 1;
    }

    appiraterInit();

    while(!s3eDeviceCheckQuitRequest())
    {
        IwGxClear();

        IwGxPrintString(100, 100, "s3eAppiraterTest");

        IwGxPrintString(100, 300, "Touch to fire event");

        IwGxFlush();
        IwGxSwapBuffers();
        s3eDeviceYield(0);
    }

    IwGxTerminate();

    return 0;
}