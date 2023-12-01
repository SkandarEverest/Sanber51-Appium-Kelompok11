*** Settings ***
Library            AppiumLibrary

*** Variable ***
${REMOTE_URL}               http://127.0.0.1:4723
${PLATFORM_NAME}            Android
${AUTOMATION_NAME}          uiautomator2
${DEVICE_NAME}              emulator-5554
${APP_PACKAGE}              com.example.myapplication
${APP_ACTIVITY}             com.example.myapplication.MainActivity

*** Keywords ***
Open Flight Application
    Open Application        ${REMOTE_URL}       
    ...                     platformName=${PLATFORM_NAME}
    ...                     automationName=${AUTOMATION_NAME}
    ...                     deviceName=${DEVICE_NAME}
    ...                     appPackage=${APP_PACKAGE}
    ...                     appActivity=${APP_ACTIVITY}
    
Close Flight Application
    Close Application