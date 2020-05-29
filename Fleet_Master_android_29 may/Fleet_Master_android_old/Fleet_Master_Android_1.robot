*** Settings ***
Library           AppiumLibrary    run_on_failure=AppiumLibrary.CapturePageScreenshot
Library           Selenium2Library    run_on_failure=AppiumLibrary.CapturePageScreenshot
Library           SikuliLibrary

*** Test Cases ***
FM_TC16
    [Documentation]    Login into FM user with valid user name and password and log out.
    ...
    ...
    ...    Total Run Time:
    ...    00:01:38
    Log into FM
    Log out from FM

FM_TC17
    [Documentation]    Forgot Password, reset their password and log in with new password.
    ...
    ...
    ...    Total Run Time:
    ...    00:03:38
    Forgot password
    Request reset password email
    Change password
    Login for forgot pwd
    AppiumLibrary.Close Application

FM_TC18
    [Documentation]    The user can complete a vehicle take out process
    ...
    ...
    ...    Total Run Time:
    ...    00:06:22
    Log into FM
    Take out vehicle
    Log out from FM
    Resolve defect

FM_TC19
    [Documentation]    The user can complete a vehicle return process.
    ...
    ...    Total Run Time:
    ...    00:05:38
    Log into FM
    Return vehicle
    Log out from FM
    Resolve defect

FM_TC20
    [Documentation]    The user can complete a vehicle defect process
    ...
    ...
    ...    Total Run Time:
    ...    00:06:05
    Log into FM
    Report a vehicle defect
    Log out from FM
    Resolve defect

FM_TC21
    [Documentation]    The user can view vehicle check history
    ...
    ...
    ...    Total Run Time:
    ...    00:02:44
    Log into FM
    Vehicle check history
    Log out from FM

FM_TC22
    [Documentation]    Message Inbox (Multiple Choice)
    ...
    ...    Total Run Time:
    ...    00:03:37
    Send Quiz message to user
    Log into FM
    Send quiz message
    Log out from FM
    Verify Send mesage data by Admin user

FM_TC23
    [Documentation]    Message Inbox (Standard Message)
    ...
    ...
    ...    Total Run Time:
    ...    00:02:39
    Send Standard message to user
    Log into FM
    Verify User Message inbox for Standard message
    Log out from FM

*** Keywords ***
Log into FM
    AppiumLibrary.Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=6.0.1    deviceName=192.168.0.201:5037    appPackage=com.aecor.fleetmastr    appActivity=com.aecor.fleetmastr.SplashActivity
    sleep    10
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/input_email    asoni@aecordigital.com
    sleep    5
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/input_password    password
    sleep    3
    Click text    Remember me
    sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_login
    Sleep    30
    AppiumLibrary.Wait Until Element Is Visible    id=com.aecor.fleetmastr:id/ll_take_out_vehicle

Log out from FM
    sleep    5
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/navigation_logout
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_positive
    AppiumLibrary.Close Application

Take out vehicle
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/ll_take_out_vehicle
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/ll_take_out_vehicle
    Sleep    3
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/enter_registration_number    ANDROIDTEST
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/textView12
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/rememberVehicleCB
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    10
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    3
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/enter_registration_number    111
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/textView11
    sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_continue
    Sleep    3
    Click Text    AdBlue
    Click text    Coolant
    Click text    Engine oil
    Click text    Screenwash
    Sleep    3
    Click text    Continue
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_continue
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/ll_back
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/ll_save
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/ll_resumeVehicleCheck
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_no
    Sleep    2
    Click text    Hand cleaning station damaged
    Sleep    5
    AppiumLibrary.Click Element At Coordinates    517    1843
    Sleep    10
    AppiumLibrary.Click Element    id=com.sec.android.app.camera:id/okay
    Sleep    2
    Click Text    No
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/saveButton
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Click text    Spill Kit
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_no
    Sleep    2
    click text    Items missing
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/saveButton
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Click text    Spill Kit
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_no
    Sleep    2
    click text    Items missing
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/saveButton
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    AppiumLibrary.Click Element At Coordinates    189    1398
    Sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/iv_close
    Sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_send
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/safeToOperate
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_positive
    Sleep    10
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnHome
    Sleep    5

Return vehicle
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/ll_return
    Sleep    3
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/enter_registration_number    ANDROIDTEST
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/textView12
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/rememberVehicleCB
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    3
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/enter_registration_number    111
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/textView11
    sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    3
    Click text    Continue
    Sleep    3
    Click text    AdBlue
    Click text    Coolant
    Click text    Engine oil
    Click text    Screenwash
    Sleep    3
    Click text    Continue
    Sleep    3
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Click text    Hand Cleaning Station
    Sleep    3
    Click text    Hand cleaning station damaged
    Sleep    5
    AppiumLibrary.Click Element At Coordinates    517    1843
    Sleep    10
    AppiumLibrary.Click Element    id=com.sec.android.app.camera:id/okay
    Sleep    2
    Click Text    No
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/saveButton
    Sleep    2
    Click text    Continue
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    AppiumLibrary.Click Element At Coordinates    529    1013
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Click text    Spill Kit
    Sleep    2
    click text    Items missing
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/saveButton
    Sleep    2
    Click text    Continue
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    AppiumLibrary.Click Element At Coordinates    526    826
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Click text    Spill Kit
    Sleep    2
    click text    Items missing
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/saveButton
    Sleep    2
    Click text    Continue
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    AppiumLibrary.Click Element At Coordinates    181    1355
    Sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/iv_close
    Sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_send
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/safeToOperate
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_positive
    Sleep    10
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnHome
    Sleep    5

Report a vehicle defect
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/ll_button3
    Sleep    3
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/enter_registration_number    ANDROIDTEST
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/textView12
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/rememberVehicleCB
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    3
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/enter_registration_number    111
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/registrationNumber
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    40    40
    Sleep    3
    Click Text    Hand Cleaning Station
    Sleep    3
    Click text    Hand cleaning station damaged
    Sleep    5
    AppiumLibrary.Click Element At Coordinates    517    1843
    Sleep    10
    AppiumLibrary.Click Element    id=com.sec.android.app.camera:id/okay
    Sleep    2
    Click Text    No
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/saveButton
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    40    40
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_save
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/resumeVehicleCheck
    Sleep    5
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Click Text    Continue
    Sleep    5
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Click text    Report/Remove Defect
    Sleep    5
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Click Text    Wheel Alignment and Tracking
    Sleep    3
    Click Text    Wheel alignment and tracking
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/saveButton
    Sleep    2
    Click Text    Continue
    Sleep    5
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Click text    Report/Remove Defect
    Sleep    5
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Click Text    Wheel Alignment and Tracking
    Sleep    3
    Click Text    Wheel alignment and tracking
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/saveButton
    Sleep    2
    Click Text    Continue
    Sleep    5
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    AppiumLibrary.Click Element At Coordinates    190    1364
    Sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/iv_close
    Sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_send
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/safeToOperate
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_positive
    Sleep    10
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnHome
    Sleep    3

Resolve defect
    Open Browser    http://fleetmastr.aecordigitalqa.com    chrome
    Maximize Browser Window
    Selenium2Library.Input Text    xpath=/html/body/div[2]/form[1]/div[5]/div/input    aecortest2019@gmail.com
    ${PWS}    Set Variable    password
    Selenium2Library.Input Text    //*[@id="register_password"]    ${PWS}
    Selenium2Library.Click Element    //*[@id="register-submit-btn"]
    Sleep    5
    Comment    Hand cleaning station defect
    Go to    http://fleetmastr.aecordigitalqa.com/defects
    sleep    5
    Selenium2Library.Click Element    //*[@id="select2-chosen-3"]
    Selenium2Library.Input Text    xpath=(.//span[contains(normalize-space(.), 'Please enter 1 or more character')]/following::input[@type='text'])[last()]    ANDROIDTEST
    Selenium2Library.Click Element    xpath=.//span[contains(., 'ANDROIDTEST')]
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')][@type='submit'])[1]
    Sleep    3
    Selenium2Library.Click Element    xpath=((.//td[contains(., 'Today')])[1]/following::i)[2]
    Sleep    3
    Selenium2Library.Click Element    xpath=.//a[contains(., 'Reported')]
    Selenium2Library.Click Element    xpath=(.//span[contains(., 'Reported')])[3]
    Selenium2Library.Click Element    xpath=(.//div[contains(., 'Resolved')])[last()]
    Sleep    3
    Selenium2Library.Input Text    //*[@id="comment"]    Resolved defect
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Save')][@type='submit']
    Sleep    3
    Page Should Contain    Data updated successfully.
    Sleep    2
    Go To    http://fleetmastr.aecordigitalqa.com/auth/logout
    Sleep    2
    Close Browser

Vehicle check history
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/ll_vehicle_history
    Sleep    3
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/enter_registration_number    ANDROIDTEST
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/textView12
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/rememberVehicleCB
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    5
    Sleep    3
    Click text    Vehicle Check
    Sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/iv_back
    Sleep    5
    Click text    Return Check
    Sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/iv_back
    Sleep    5
    Click text    Defect Report
    Sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/iv_back
    Sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/iv_back
    Sleep    2

Send Quiz message to user
    Open Browser    http://fleetmastr.aecordigitalqa.com    chrome
    Maximize Browser Window
    Selenium2Library.Input Text    xpath=/html/body/div[2]/form[1]/div[5]/div/input    aecortest2019@gmail.com
    ${PWS}    Set Variable    password
    Selenium2Library.Input Text    //*[@id="register_password"]    ${PWS}
    Selenium2Library.Click Element    //*[@id="register-submit-btn"]
    Sleep    5
    Go To    http://fleetmastr.aecordigitalqa.com/messages
    sleep    8
    Selenium2Library.Click Element    //*[@id="messages-page"]/div[3]/div/div/div[2]/div/ul/li[3]/a
    Sleep    2
    Selenium2Library.Click Element    //*[@id="messages-form"]/div/div[1]/div/div[1]/div/div/button
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Test March')])[2]
    Selenium2Library.Click Element    //*[@id="accordion2"]/div[1]/div/div[1]/h4/a
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Anjali Soni (asoni@aecordigital.com)')])[3]
    Selenium2Library.Click Element    xpath=(.//button[contains(., 'Send')][@type='submit'])[1]
    Sleep    2
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Yes')][@type='button']
    Sleep    3
    Page Should Contain    Message has been sent!
    sleep    2
    Go To    http://fleetmastr.aecordigitalqa.com/auth/logout
    Sleep    2
    Close Browser

Send quiz message
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/ll_training_content
    Sleep    3
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/et_search    Test March Quiz
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/tv_department_title
    Sleep    1
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/tv_message_desc
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/tv_start_quiz
    Sleep    3
    Click Text    ANS 1
    Click Text    ANS 3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_send
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_back_to_messages
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/iv_back
    Sleep    3

Verify Send mesage data by Admin user
    Open Browser    http://fleetmastr.aecordigitalqa.com    chrome
    Maximize Browser Window
    Selenium2Library.Input Text    xpath=/html/body/div[2]/form[1]/div[5]/div/input    aecortest2019@gmail.com
    ${PWS}    Set Variable    password
    Selenium2Library.Input Text    //*[@id="register_password"]    ${PWS}
    Selenium2Library.Click Element    //*[@id="register-submit-btn"]
    Sleep    5
    Go To    http://fleetmastr.aecordigitalqa.com/messages
    sleep    8
    Selenium2Library.Click Element    xpath=((.//td[contains(., '1')])[3]/following::i)[1]
    Sleep    4
    Page Should Contain    100.00%
    Selenium2Library.Click Element    xpath=.//h4[contains(normalize-space(.), 'Report Details')]/following::i
    sleep    2
    Go To    http://fleetmastr.aecordigitalqa.com/auth/logout
    Sleep    2
    Close Browser

Send Standard message to user
    Open Browser    http://fleetmastr.aecordigitalqa.com    chrome
    Maximize Browser Window
    Selenium2Library.Input Text    xpath=/html/body/div[2]/form[1]/div[5]/div/input    aecortest2019@gmail.com
    ${PWS}    Set Variable    password
    Selenium2Library.Input Text    //*[@id="register_password"]    ${PWS}
    Selenium2Library.Click Element    //*[@id="register-submit-btn"]
    Sleep    5
    Go To    http://fleetmastr.aecordigitalqa.com/messages
    sleep    5
    Selenium2Library.Click Element    //*[@id="messages-page"]/div[3]/div/div/div[2]/div/ul/li[3]/a
    Sleep    2
    Selenium2Library.Input Text    xpath=.//input[@placeholder='Enter message title'][@type='text']    Message Title
    Selenium2Library.Click Element    //*[@id="messagesWithoutTemplate_ifr"]
    Press Key    //*[@id="messagesWithoutTemplate_ifr"]    \\13
    Press Key    //*[@id="messagesWithoutTemplate_ifr"]    Standard Message
    Selenium2Library.Click Element    //*[@id="accordion2"]/div[1]/div/div[1]/h4/a
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Anjali Soni (asoni@aecordigital.com)')])[3]
    Selenium2Library.Click Element    xpath=(.//button[contains(., 'Send')][@type='submit'])[1]
    Sleep    2
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Yes')][@type='button']
    Sleep    3
    Page Should Contain    Message has been sent!
    sleep    2
    Go To    http://fleetmastr.aecordigitalqa.com/auth/logout
    Sleep    2
    Close Browser

Verify User Message inbox for Standard message
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/ll_training_content
    Sleep    3
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/et_search    Standard Message
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/tv_department_title
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/tv_message_desc
    Sleep    2
    Page Should Contain Text    Message Title
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/iv_back
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/iv_back
    Sleep    3

Forgot password
    Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=6.0.1    deviceName=192.168.0.201:5037    appPackage=com.aecor.fleetmastr    appActivity=com.aecor.fleetmastr.SplashActivity
    sleep    5
    sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/tv_forgot_password
    Sleep    3

Request reset password email
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/input_email    aecortest2019@gmail.com
    Sleep    2
    Hide Keyboard
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_forgot_password
    Sleep    5
    Close Application

Change password
    Open Browser    https://accounts.google.com/signin/v2/identifier?continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&service=mail&sacu=1&rip=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin
    Maximize Browser Window
    Selenium2Library.Input Text    //*[@id="identifierId"]    aecortest2019@gmail.com
    Selenium2Library.Click Element    //*[@id="identifierNext"]/content
    Sleep    5
    Selenium2Library.Input Text    //*[@id="password"]/div[1]/div/div[1]/input    Aecor1234
    Selenium2Library.Click Element    //*[@id="passwordNext"]/content/span
    sleep    20
    Selenium2Library.Wait Until Element Is Visible    //*[@id="aso_search_form_anchor"]/div/input    timeout=20
    Selenium2Library.Input Text    //*[@id="aso_search_form_anchor"]/div/input    fleetmastr - reset your account password
    Press Key    //*[@id="aso_search_form_anchor"]/div/input    \\13
    Sleep    10
    Selenium2Library.Click Element    xpath=/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div[2]/div[4]/div[1]/div/table/tbody/tr[1]/td[6]/div/div/div[2]/span/span
    Sleep    3
    Focus    xpath=.//a[contains(normalize-space(.), 'Reset your password')]
    Press Key    xpath=.//a[contains(normalize-space(.), 'Reset your password')]    \\13
    Comment    Click Element    xpath=/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div[3]/div/table/tr/td[1]/div[2]/div[2]/div/div[3]/div[1]/div/div/div/div/div[1]/div[2]/div[3]/div[3]/div/div[1]/div[1]/table/tbody/tr/td/table/tbody/tr[2]/td/table/tbody/tr[4]/td/div[1]/a
    Sleep    5
    Select Window    NEW
    Sleep    5
    Selenium2Library.Input Text    //*[@id="password"]    password
    Selenium2Library.Input Text    //*[@id="password_confirmation"]    password
    Selenium2Library.Click Element    //*[@id="reset-submit-btn"]
    sleep    3
    Page Should Contain    Your password has successfully been reset.
    Close All Browsers

Login for forgot pwd
    Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=6.0.1    deviceName=192.168.0.201:5037    appPackage=com.aecor.fleetmastr    appActivity=com.aecor.fleetmastr.SplashActivity
    sleep    10
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/input_email    aecortest2019@gmail.com
    sleep    5
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/input_password    password
    sleep    3
    Click text    Remember me
    sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_login
    Sleep    15
    AppiumLibrary.Wait Until Element Is Visible    id=com.aecor.fleetmastr:id/ll_take_out_vehicle
