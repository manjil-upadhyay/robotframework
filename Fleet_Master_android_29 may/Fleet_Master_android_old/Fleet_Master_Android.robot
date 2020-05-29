*** Settings ***
Library           AppiumLibrary
Library           Selenium2Library
Library           SikuliLibrary

*** Test Cases ***
Login and Logout
    Log into FM
    Log out from FM

Vehicle take out and return
    Log into FM
    Take out vehicle
    Return vehicle
    Log out from FM

Vehicle check history TC
    Log into FM
    Vehicle check history
    Log out from FM

Quiz Message
    Comment    Send Quiz message to user
    Log into FM
    Send quiz message
    Log out from FM
    Verify Send mesage data by Admin user

Standard Message
    Send Standard message to user
    Log into FM
    Verify User Message inbox for Standard message
    Log out from FM

Vehicle Defect
    Log into FM
    Report vehicle defect
    Log out from FM
    Resolve defect

test
    Appiumlibrary.Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=8.1.0    deviceName=100.76.82.252:5037    appPackage=com.aecor.fleetmastr    appActivity=com.aecor.fleetmastr.SplashActivity
    sleep    10
    Comment    AppiumLibrary.Click Element    id=com.android.packageinstaller:id/permission_allow_button
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/input_email    asoni@aecordigital.com
    sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/input_password
    sleep    5
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/input_password    password
    sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_login
    Sleep    15
    AppiumLibrary.Wait Until Element Is Visible    id=com.aecor.fleetmastr:id/ll_take_out_vehicle

*** Keywords ***
Log into FM
    selenium2library.Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=6.0.1    deviceName=192.168.0.201:5037    appPackage=com.aecor.fleetmastr    appActivity=com.aecor.fleetmastr.SplashActivity
    sleep    10
    Comment    AppiumLibrary.Click Element    id=com.android.packageinstaller:id/permission_allow_button
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/input_email    asoni@aecordigital.com
    sleep    5
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/input_password    password
    sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_login
    Sleep    15
    AppiumLibrary.Wait Until Element Is Visible    id=com.aecor.fleetmastr:id/ll_take_out_vehicle

Take out vehicle
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/ll_take_out_vehicle
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/ll_take_out_vehicle
    Sleep    3
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/enter_registration_number    REGISTRATION1
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/textView12
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_close
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_close
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    3
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/enter_registration_number    600
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
    Comment    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_continue
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
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_yes
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
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_send
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_positive
    Sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnHome
    Sleep    5

Return vehicle
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/ll_takeOutReturnCheck
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    3
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/enter_registration_number    600
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/textView11
    sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    3
    Click text    Continue
    Comment    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
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
    Click text    Continue
    Comment    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_send
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_positive
    Sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnHome
    Sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/ll_logout
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_positive

Vehicle check history
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/ll_vehicle_history
    Sleep    3
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/enter_registration_number    REGISTRATION1
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/textView12
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/txt_category
    Sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_back
    Sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/iv_back
    Sleep    2

Log out from FM
    sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/ll_logout
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_positive
    Close Application

Send Quiz message to user
    Open Browser    http://fleetmastr.aecordigitalqa.com    chrome
    Maximize Browser Window
    Selenium2Library.Input Text    xpath=/html/body/div[2]/form[1]/div[5]/div/input    aecortest2019@gmail.com
    ${PWS}    Set Variable    srp9662654910
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
    Page Should Contain Text    Welcome

Verify Send mesage data by Admin user
    Open Browser    http://fleetmastr.aecordigitalqa.com    chrome
    Maximize Browser Window
    Selenium2Library.Input Text    xpath=/html/body/div[2]/form[1]/div[5]/div/input    aecortest2019@gmail.com
    ${PWS}    Set Variable    srp9662654910
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
    ${PWS}    Set Variable    srp9662654910
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
    Page Should Contain Text    Welcome

Report vehicle defect
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/ll_button3
    Sleep    3
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/enter_registration_number    REGISTRATION2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/textView12
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    3
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/enter_registration_number    600
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/registrationNumber
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Sleep    2
    Click Text    Mirrors
    Sleep    3
    Click Text    Mirrors de-laminated
    Sleep    3
    AppiumLibrary.Click Element At Coordinates    517    1843
    Sleep    10
    AppiumLibrary.Click Element    id=com.sec.android.app.camera:id/okay
    Sleep    2
    Click Text    No
    Comment    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_negative
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/saveButton
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Sleep    2
    Click Text    Spill Kit
    Sleep    3
    Click Text    Items missing
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/saveButton
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    40    40
    Sleep    3
    Click Text    Continue
    Sleep    5
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Sleep    2
    Click Text    Send
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/safeToOperate
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_positive
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnHome
    Sleep    3

Resolve defect
    Open Browser    http://fleetmastr.aecordigitalqa.com    chrome
    Maximize Browser Window
    Selenium2Library.Input Text    xpath=/html/body/div[2]/form[1]/div[5]/div/input    aecortest2019@gmail.com
    ${PWS}    Set Variable    srp9662654910
    Selenium2Library.Input Text    //*[@id="register_password"]    ${PWS}
    Selenium2Library.Click Element    //*[@id="register-submit-btn"]
    Sleep    5
    Comment    Mirrors delaminated defect
    Go to    http://fleetmastr.aecordigitalqa.com/defects
    sleep    5
    Selenium2Library.Click Element    //*[@id="select2-chosen-3"]
    Selenium2Library.Input Text    xpath=(.//span[contains(normalize-space(.), 'Please enter 1 or more character')]/following::input[@type='text'])[last()]    REGISTRATION2
    Selenium2Library.Click Element    xpath=.//span[contains(., 'REGISTRATION2')]
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
    Comment    Spill kit- Items missing defect
    Go to    http://fleetmastr.aecordigitalqa.com/defects
    sleep    5
    Selenium2Library.Click Element    //*[@id="select2-chosen-3"]
    Selenium2Library.Input Text    xpath=(.//span[contains(normalize-space(.), 'Please enter 1 or more character')]/following::input[@type='text'])[last()]    REGISTRATION2
    Selenium2Library.Click Element    xpath=.//span[contains(., 'REGISTRATION2')]
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')][@type='submit'])[1]
    Sleep    3
    Selenium2Library.Click Element    xpath=((.//td[contains(., 'Today')])[2]/following::i)[2]
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
