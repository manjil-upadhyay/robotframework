*** Settings ***
Library           AppiumLibrary
Library           Selenium2Library    run_on_failure=AppiumLibrary.CapturePageScreenshot
Library           SikuliLibrary
Variables         Fleetmastr.py
Library           String
Library           AutoItLibrary
Variables         ../../Users/my/Desktop/AecorAutomation/Fleet_Master_android/FleetMastr.py

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
    Close Application

FM_TC18
    [Documentation]    The user can complete a vehicle take out process
    ...
    ...
    ...    Total Run Time:
    ...    00:06:22
    Log into FM
    Take out vehicle without trailer
    Return vehicle after vehicle takeout
    Log out from FM

FM_TC19
    [Documentation]    The user can complete a vehicle return process.
    ...
    ...    Total Run Time:
    ...    00:05:38
    Log into FM
    Return vehicle
    Return vehicle - Resolve Vehicle defect (Trailer)
    Log out from FM

FM_TC20
    [Documentation]    The user can complete a vehicle defect process
    ...
    ...
    ...    Total Run Time:
    ...    00:06:05
    Log into FM
    Report a vehicle defect
    Return vehicle - Resolve Vehicle defect (Trailer)
    Log out from FM

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

FM_TC32
    [Documentation]    The user can complete a vehicle take out process
    ...
    ...
    ...    Total Run Time:
    ...    00:06:22
    Log into FM
    Take out vehicle - with trailer
    Return vehicle after vehicle takeout
    Log out from FM

FM_TC33
    [Documentation]    The user can complete a vehicle take out process
    ...
    ...
    ...    Total Run Time:
    ...    00:06:22
    Log into FM
    Take out vehicle - with trailer (defect) (safe to operate)
    Verify user can not logout if vehicle is taken.
    Return vehicle after vehicle takeout
    Log out from FM

FM_TC29
    [Documentation]    The user can complete a vehicle take out process
    ...
    ...
    ...    Total Run Time:
    ...    00:06:22
    Log into FM
    Resolve Vehicle defect (Trailer)
    Log out from FM

FM_TC25
    [Documentation]    The user can complete a vehicle take out process
    ...
    ...
    ...    Total Run Time:
    ...    00:06:22
    Comment    Add Insurance Details (Web)
    Log into FM
    Report vehicle incident

FM_TC30
    [Documentation]    The user can complete a vehicle take out process
    ...
    ...
    ...    Total Run Time:
    ...    00:06:22
    Add Insurance Details (Web)
    Get report incident number (web)
    Log into FM
    Report vehicle incident
    Log out from FM
    Verify incident report in web

FM_TC26 Verify User can not allowed to add incident report if user is offline
    [Documentation]    The user can complete a vehicle take out process
    ...
    ...
    ...    Total Run Time:
    ...    00:06:22
    Log into FM
    Verify User can not add incident report if user is offline

FM_TC28 Verify User is not allow to access telematics if user is offline
    [Documentation]    The user can complete a vehicle take out process
    ...
    ...
    ...    Total Run Time:
    ...    00:06:22
    Log into FM
    Verify user is not allowed to access Telematics tab in offline mode
    Log out from FM

FM_TC27 Verify User can access telematics if user is online
    [Documentation]    The user can complete a vehicle take out process
    ...
    ...
    ...    Total Run Time:
    ...    00:06:22
    Log into FM
    Verify telematics details with no journey
    Log out from FM

FM_TC27 Verify User can access telematics if user is online web telematic NO
    [Documentation]    The user can complete a vehicle take out process
    ...
    ...
    ...    Total Run Time:
    ...    00:06:22
    Comment    Telematics - Turn on telematics option NO for vehicle from WEB
    Log into FM
    Telematics - Take out vehicle
    Telematics - Verify vehicle telematics data with telematics option NO
    Return vehicle after vehicle takeout
    Log out from FM

FM_TC27 Verify User can access telematics if user is online Web telematics YES
    [Documentation]    The user can complete a vehicle take out process
    ...
    ...
    ...    Total Run Time:
    ...    00:06:22
    Telematics - Turn on telematics option YES for vehicle from WEB
    Log into FM
    Telematics - Take out vehicle
    Telematics - Verify vehicle telematics data with telematics option YES
    Return vehicle after vehicle takeout
    Log out from FM

FM_TC24 Verify Vehicle Histroy texes
    [Documentation]    The user can complete a vehicle take out process
    ...
    ...
    ...    Total Run Time:
    ...    00:06:22
    Log into FM
    Comment    Telematics - Take out vehicle
    Comment    Return vehicle after vehicle takeout
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/ll_vehicleCheckHistory
    Sleep    3
    AppiumLibrary.Click Element    com.android.permissioncontroller:id/permission_allow_always_button
    sleep    4
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/enter_registration_number    MK60SVC
    sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/textView12
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/rememberVehicleCB
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    6
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    10
    Appiumlibrary.Click text    Vehicle Check
    Sleep    5
    AppiumLibrary.Page Should Contain Text    Check Your Vehicle's Levels
    sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/iv_back
    Sleep    5
    Appiumlibrary.Click text    Return Check
    Sleep    5
    AppiumLibrary.Page Should Contain Text    No Defects
    sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/iv_back
    Sleep    5
    Comment    Click text    Defect Report
    Comment    Sleep    5
    Comment    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/iv_back
    Comment    Sleep    5
    Comment    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/iv_back
    Comment    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/iv_back
    Sleep    5
    Log out from FM

FM_TC31 Verify telematics data in web
    [Documentation]    The user can complete a vehicle take out process
    ...
    ...
    ...    Total Run Time:
    ...    00:06:22
    Log into Fleetmastr website
    Selenium2Library.Go to    ${FMTelematicspage}
    sleep    7
    Selenium2Library.Click Element    ${SearchBTN}
    Page Should Contain    Please enter registration number.
    sleep    2
    Selenium2Library.Click Element    ${SearchDropDown}
    sleep    2
    Selenium2Library.Click Element    ${AutoSearchBox}
    Selenium2Library.Input Text    ${AutoSearchBox}    TESTT125
    sleep    1
    Press Key    ${AutoSearchBox}    \\13
    sleep    2
    Selenium2Library.Click Element    ${SearchBTN}
    Page Should Contain    This vehicle does not have any associated telematics data.
    sleep    2
    Selenium2Library.Click Element    ${SearchDropDown}
    sleep    2
    Selenium2Library.Click Element    ${AutoSearchBox}
    Selenium2Library.Input Text    ${AutoSearchBox}    MK60SVC
    sleep    1
    Press Key    ${AutoSearchBox}    \\13
    sleep    2
    Selenium2Library.Click Element    ${SearchBTN}
    Page Should Contain    Vehicle is stationary. Click on 'Show stationary'.
    sleep    2
    Selenium2Library.Click Element    ${ShowStationaryCheckbox}
    sleep    2
    Selenium2Library.Click Element    ${SearchBTN}
    sleep    2
    Execute Javascript    window.scroll(0,500)
    sleep    2
    Selenium2Library.Click Element    ${VehicleonGraph}
    sleep    2
    ${VehicleDetails}    Selenium2Library.Get Text    ${VehicleDetailsXP}
    log    ${VehicleDetails}
    should match    ${VehicleDetails}    MK60SVC
    ${DriverName}    Selenium2Library.Get Text    ${DriverNameXP}
    log    ${DriverName}
    ${Address}    Selenium2Library.Get Text    ${AddressXP}
    log    ${Address}
    ${Speed}    Selenium2Library.Get Text    ${SpeedXP}
    log    ${Speed}
    ${Direction}    Selenium2Library.Get Text    ${DirectionXP}
    log    ${Direction}
    ${Last updated}    Selenium2Library.Get Text    ${LastUpdatXP}
    log    ${Last updated}
    ${Driving}    Selenium2Library.Get Text    ${DrivingXP}
    log    ${Driving}
    ${Idling}    Selenium2Library.Get Text    ${IdlingXP}
    log    ${Idling}
    ${Stopped}    Selenium2Library.Get Text    ${StoppedXP}
    log    ${Stopped}
    sleep    2
    Selenium2Library.Click Element    ${VehicledetailsCloseBTN}
    sleep    2
    Close Browser

Curd Operations
    Log into FM
    AppiumLibrary.Click Element    ${TakeoutVehicleBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${AlwaysAllowPermissionBTN}
    Sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    PV4060
    AppiumLibrary.Click Element    ${text}
    Sleep    3
    AppiumLibrary.Click Element    ${RememberVehileCB}
    Sleep    3
    AppiumLibrary.Click Element    ${ContinueBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${ContinueBTN}
    Sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    0
    sleep    2
    AppiumLibrary.Click Element    ${TextonPage}
    sleep    5
    AppiumLibrary.Click Element    ${ContinueBTN}
    Sleep    5
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/ll_cancel
    sleep    5
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/btn_positive
    sleep    7
    AppiumLibrary.Page Should Contain Text    Welcome
    sleep    5
    AppiumLibrary.Click Element    ${ReturnVehicleBTN}
    Sleep    3
    Comment    AppiumLibrary.Click Element    ${AlwaysAllowPermissionBTN}
    Comment    Sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    PV4060
    AppiumLibrary.Click Element    ${text}
    Sleep    3
    AppiumLibrary.Click Element    ${RememberVehileCB}
    Sleep    3
    AppiumLibrary.Click Element    ${EnterRegNoConfirmBTN}
    Sleep    5
    AppiumLibrary.Click Element    ${ConfVehDetailsConfirmBTN}
    Sleep    3
    AppiumLibrary.Input Text    ${OdometerReadingXP}    0
    AppiumLibrary.Click Element    ${EnterRegNoText}
    sleep    2
    AppiumLibrary.Click Element    ${ContinueBTN}
    Sleep    3
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/ll_cancel
    sleep    5
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/btn_positive
    sleep    7
    AppiumLibrary.Page Should Contain Text    Welcome
    sleep    5
    AppiumLibrary.Click Element    ${ReportVehicleDefectBTN}
    sleep    5
    Comment    AppiumLibrary.Click Element    ${AlwaysAllowPermissionBTN}
    Comment    Sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    PV4060
    AppiumLibrary.Click Element    ${text}
    Sleep    3
    AppiumLibrary.Click Element    ${RememberVehileCB}
    Sleep    3
    AppiumLibrary.Click Element    ${EnterRegNoConfirmBTN}
    Sleep    5
    AppiumLibrary.Click Element    ${ContinueBTN}
    Sleep    3
    AppiumLibrary.Input Text    ${OdometerReadingXP}    0
    AppiumLibrary.Click Element    ${TextonPage}
    sleep    2
    AppiumLibrary.Click Element    ${ContinueBTN}
    Sleep    3
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/ll_cancel
    sleep    5
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/btn_positive
    sleep    7
    AppiumLibrary.Page Should Contain Text    Welcome
    sleep    5
    AppiumLibrary.Click Element    ${ResolveDefectBTN}
    sleep    3
    Comment    AppiumLibrary.Click Element    ${AlwaysAllowPermissionBTN}
    Comment    Sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    PV4060
    sleep    2
    AppiumLibrary.Click Element    ${EnterRegNoText}
    sleep    2
    AppiumLibrary.Click Element    ${EnterRegNoConfirmBTN}
    SLEEP    5
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/ll_cancel
    sleep    5
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/btn_positive
    sleep    7
    AppiumLibrary.Page Should Contain Text    Welcome
    sleep    5
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/ll_vehicleCheckHistory
    Sleep    3
    Comment    AppiumLibrary.Click Element    com.android.permissioncontroller:id/permission_allow_always_button
    Comment    sleep    4
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/enter_registration_number    PV4060
    sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/textView12
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/rememberVehicleCB
    Sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    6
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/ll_cancel
    sleep    5
    AppiumLibrary.Page Should Contain Text    Welcome
    sleep    5
    AppiumLibrary.Click Element    ${ReportIncidentBTN}
    sleep    5
    Comment    AppiumLibrary.Click Element    ${AlwaysAllowPermissionBTN}
    Comment    sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    PV4060
    sleep    1
    AppiumLibrary.Click Element    ${EnterRegNoText}
    sleep    1
    AppiumLibrary.Click Element    ${EnterRegNoConfirmBTN}
    sleep    5
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/ll_cancel
    sleep    5
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/btn_positive
    sleep    7
    AppiumLibrary.Page Should Contain Text    Welcome
    sleep    5
    AppiumLibrary.Click Element    ${ReportIncidentBTN}
    sleep    5
    Comment    AppiumLibrary.Click Element    ${AlwaysAllowPermissionBTN}
    Comment    sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    PV4060
    sleep    1
    AppiumLibrary.Click Element    ${EnterRegNoText}
    sleep    1
    AppiumLibrary.Click Element    ${EnterRegNoConfirmBTN}
    sleep    5
    AppiumLibrary.Click Element    ${ConfVehDetailsConfirmBTN}
    sleep    3
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/ll_cancel
    sleep    5
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/btn_positive
    sleep    7
    AppiumLibrary.Page Should Contain Text    Welcome
    sleep    5

Clh Logout Functionality - Verify multiple user can user same device for vehicle check
    Log into FM
    [Teardown]    Log out from FM

*** Keywords ***
Log into FM
    AppiumLibrary.Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=10    deviceName=192.168.0.103:5037    appPackage=com.aecor.fleetmastr    appActivity=com.aecor.fleetmastr.SplashActivity
    sleep    10
    AppiumLibrary.Input Text    ${AppUsernameXP}    aecortest2019@gmail.com
    sleep    3
    AppiumLibrary.Input Text    ${AppPasswordXP}    password
    sleep    3
    Click text    Remember me
    sleep    3
    AppiumLibrary.Click Element    ${AppLoginBTN}
    Sleep    10
    AppiumLibrary.Wait Until Page Contains    Take out vehicle    timeout=20

Log out from FM
    sleep    5
    AppiumLibrary.Click Element    ${AppLogoutXP}
    Sleep    2
    AppiumLibrary.Click Element    ${AppLogoutConfirm}
    appiumlibrary.Close Application

Take out vehicle without trailer
    AppiumLibrary.Click Element    ${TakeoutVehicleBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${AlwaysAllowPermissionBTN}
    Sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    MK60SVC
    AppiumLibrary.Click Element    ${text}
    Sleep    3
    AppiumLibrary.Click Element    ${RememberVehileCB}
    Sleep    3
    AppiumLibrary.Click Element    ${ContinueBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${ContinueBTN}
    Sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    9999999999
    sleep    2
    AppiumLibrary.Click Element    ${TextonPage}
    sleep    5
    AppiumLibrary.Click Element    ${ContinueBTN}
    Sleep    5
    AppiumLibrary.Click Element    ${ContinueButton}
    Sleep    3
    AppiumLibrary.Click Element    ${TrailerChcekNo}
    Comment    AppiumLibrary.Input Text    ${EnterTrailerIDTB}    1026
    Comment    AppiumLibrary.Click Element    ${TrailerCheckText}
    sleep    2
    AppiumLibrary.Click Element    ${ContinueButton}
    sleep    2
    Comment    Click Text    AdBlue
    Comment    Click text    Coolant
    Comment    Click text    Engine oil
    Comment    Click text    Screenwash
    Comment    Sleep    3
    Comment    Click text    Continue
    Comment    Sleep    3
    Comment    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_continue
    Sleep    3
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    3
    AppiumLibrary.Click Element    ${BackButton}
    sleep    2
    AppiumLibrary.Click Element    ${SaveButton}
    sleep    5
    AppiumLibrary.Click Element    ${ResumevehicleCheck}
    sleep    5
    AppiumLibrary.Click Element    ${ContinueButton}
    Sleep    3
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    3
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Comment    Sleep    2
    Comment    AppiumLibrary.Click Element    ${OptionYes}
    Comment    Sleep    2
    Comment    AppiumLibrary.Click Element    ${OptionYes}
    Comment    Sleep    2
    Comment    AppiumLibrary.Click Element    ${OptionYes}
    Comment    Sleep    2
    Comment    AppiumLibrary.Click Element    ${OptionYes}
    sleep    4
    Comment    AppiumLibrary.Scroll    id=com.aecor.fleetmastr:id/btn_safety_check    id=com.aecor.fleetmastr:id/btn_send
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Sleep    2
    AppiumLibrary.Click Element    ${AlmostDoneSendBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${NoconnectinSaveBTN}
    Sleep    10
    AppiumLibrary.Click Element    ${HomeBTN}
    Sleep    10

Return vehicle
    AppiumLibrary.Click Element    ${ReturnVehicleBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${AlwaysAllowPermissionBTN}
    Sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    MK60SVC
    AppiumLibrary.Click Element    ${text}
    Sleep    3
    AppiumLibrary.Click Element    ${RememberVehileCB}
    Sleep    3
    AppiumLibrary.Click Element    ${EnterRegNoConfirmBTN}
    Sleep    5
    AppiumLibrary.Click Element    ${ConfVehDetailsConfirmBTN}
    Sleep    3
    AppiumLibrary.Input Text    ${OdometerReadingXP}    9999999999
    AppiumLibrary.Click Element    ${EnterRegNoText}
    sleep    2
    AppiumLibrary.Click Element    ${ContinueBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${ContinueButton}
    Sleep    3
    AppiumLibrary.Click Element    ${OptionYes}
    AppiumLibrary.Input Text    ${EnterTrailerIDTB}    1026
    AppiumLibrary.Click Element    ${TrailerCheckText}
    sleep    2
    AppiumLibrary.Click Element    ${ContinueButton}
    sleep    2
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Comment    Swipe By Percent    80    80    40    40
    Comment    Swipe By Percent    80    80    60    60
    Comment    Swipe By Percent    80    80    50    50
    Comment    Sleep    2
    Comment    Swipe By Percent    80    80    40    40
    Comment    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    AppiumLibrary.Click Text    Hand Cleaning Station
    Sleep    3
    Appiumlibrary.Click text    Hand cleaning station damaged
    Sleep    5
    AppiumLibrary.Click Element    ${AllowCameraAccess}
    Sleep    2
    AppiumLibrary.Click Element    ${AllowCameraAccess}
    Sleep    2
    AppiumLibrary.Click Text    Take picture
    sleep    4
    AppiumLibrary.Click Text    OK
    Sleep    2
    AppiumLibrary.Click Element    ${CancelBTN}
    Sleep    2
    AppiumLibrary.Click Element    ${SaveImageBTN}
    Sleep    2
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
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
    Sleep    3
    AppiumLibrary.Click Element    ${ReviewScreenContBTN}
    Sleep    5
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    3
    AppiumLibrary.Click Element    ${AlmostDoneSendBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${SafeToOperateBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${SendReportConfBTN}
    Sleep    10
    AppiumLibrary.Click Element    ${HomeBTN}
    Sleep    10

Report a vehicle defect
    AppiumLibrary.Click Element    ${ReportVehicleDefectBTN}
    sleep    5
    AppiumLibrary.Click Element    ${AlwaysAllowPermissionBTN}
    Sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    MK60SVC
    AppiumLibrary.Click Element    ${text}
    Sleep    3
    AppiumLibrary.Click Element    ${RememberVehileCB}
    Sleep    3
    AppiumLibrary.Click Element    ${EnterRegNoConfirmBTN}
    Sleep    5
    AppiumLibrary.Click Element    ${ContinueBTN}
    Sleep    3
    AppiumLibrary.Input Text    ${OdometerReadingXP}    9999999999
    AppiumLibrary.Click Element    ${TextonPage}
    sleep    2
    AppiumLibrary.Click Element    ${ContinueBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${ContinueButton}
    Sleep    3
    AppiumLibrary.Click Element    ${TrailerChcekYes}
    AppiumLibrary.Input Text    ${EnterTrailerIDTB}    1026
    AppiumLibrary.Click Element    ${TrailerCheckText}
    sleep    2
    AppiumLibrary.Click Element    ${ContinueButton}
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    Swipe By Percent    80    80    40    40
    Comment    Swipe By Percent    80    80    60    60
    Comment    Swipe By Percent    80    80    40    40
    Sleep    2
    AppiumLibrary.Click Text    Hand Cleaning Station
    Sleep    3
    Appiumlibrary.Click text    Hand cleaning station damaged
    Sleep    5
    AppiumLibrary.Click Element    ${AllowCameraAccess}
    Sleep    2
    AppiumLibrary.Click Element    ${AllowCameraAccess}
    Sleep    2
    AppiumLibrary.Click Text    Take picture
    sleep    4
    AppiumLibrary.Click Text    OK
    Sleep    2
    AppiumLibrary.Click Element    ${CancelBTN}
    Sleep    2
    AppiumLibrary.Click Element    ${SaveImageBTN}
    Sleep    2
    Sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
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
    Sleep    3
    AppiumLibrary.Click Element    ${ReviewScreenContBTN}
    Sleep    5
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    3
    AppiumLibrary.Click Element    ${AlmostDoneSendBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${SafeToOperateBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${SendReportConfBTN}
    Sleep    10
    AppiumLibrary.Click Element    ${HomeBTN}
    Sleep    10

Resolve defect
    Comment    Open Browser    http://fleetmastr.aecordigitalqa.com    chrome
    Comment    Maximize Browser Window
    Comment    Selenium2Library.Input Text    xpath=/html/body/div[2]/form[1]/div[5]/div/input    aecortest2019@gmail.com
    Comment    ${PWS}    Set Variable    password
    Comment    Selenium2Library.Input Text    //*[@id="register_password"]    ${PWS}
    Comment    Selenium2Library.Click Element    //*[@id="register-submit-btn"]
    Log into Fleetmastr website
    Sleep    5
    Comment    Hand cleaning station defect
    Go to    ${ReportDefectURL}
    sleep    5
    Selenium2Library.Click Element    ${EntervehicleRegTB}
    Selenium2Library.Input Text    xpath=(.//span[contains(normalize-space(.), 'Please enter 1 or more character')]/following::input[@type='text'])[last()]    MK60SVC
    Selenium2Library.Click Element    xpath=.//span[contains(., 'MK60SVC')]
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
    AppiumLibrary.Click Element    ${VehicleCheckHistory}
    Sleep    3
    AppiumLibrary.Click Element    ${AlwaysAllowPermissionBTN}
    sleep    4
    AppiumLibrary.Input Text    ${RegNumberIputXP}    MK60SVC
    sleep    2
    AppiumLibrary.Click Element    ${text}
    Sleep    3
    AppiumLibrary.Click Element    ${RememberVehileCB}
    Sleep    3
    AppiumLibrary.Click Element    ${EnterRegNoConfirmBTN}
    Sleep    5
    AppiumLibrary.Click Element    ${ConfVehDetailsConfirmBTN}
    Sleep    10
    Appiumlibrary.Click text    Vehicle Check
    Sleep    5
    AppiumLibrary.Page Should Contain Text    Vehicle Check Summary
    sleep    2
    AppiumLibrary.Click Element    ${MyJourneyBackBTN}
    Sleep    5
    Appiumlibrary.Click text    Return Check
    Sleep    5
    AppiumLibrary.Page Should Contain Text    Return Check Summary
    sleep    2
    AppiumLibrary.Click Element    ${MyJourneyBackBTN}
    Sleep    5
    AppiumLibrary.Click Element    ${MyJourneyBackBTN}
    Sleep    5

Send Quiz message to user
    Comment    Open Browser    http://fleetmastr.aecordigitalqa.com    ff
    Comment    Maximize Browser Window
    Comment    Selenium2Library.Input Text    //input[@placeholder='Username or Email']    aecortest2019@gmail.com
    Comment    ${PWS}    Set Variable    password
    Comment    Selenium2Library.Input Text    //input[@id='register_password']    ${PWS}
    Comment    Selenium2Library.Click Element    //button[@id='register-submit-btn']
    Log into Fleetmastr website
    Sleep    5
    Go To    ${MessagesURL}
    sleep    8
    Selenium2Library.Click Element    ${SendMessageXP}
    Sleep    2
    Selenium2Library.Click Element    ${NoTemplateSelectedDD}
    Selenium2Library.Click Element    ${TestMarchTemplate}
    Selenium2Library.Click Element    ${UsersDD}
    Selenium2Library.Click Element    ${SelectUserXP}
    Selenium2Library.Click Element    ${SendMessageBTN}
    Sleep    2
    Selenium2Library.Click Element    ${ConfirmSendBTN}
    Sleep    3
    Page Should Contain    Message has been sent!
    sleep    2
    Go To    ${LogoutURL}
    Sleep    2
    Close Browser

Send quiz message
    AppiumLibrary.Click Element    ${MessageXP}
    Sleep    3
    AppiumLibrary.Input Text    ${SearchMessageBox}    Test March Quiz
    Sleep    2
    AppiumLibrary.Click Element    ${MessageTitle}
    Sleep    1
    AppiumLibrary.Click Element    ${MessageDescription}
    Sleep    3
    AppiumLibrary.Click Element    ${AlwaysAllowPermissionBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${StartQuiz}
    Sleep    3
    Click Text    ANS 1
    Click Text    ANS 3
    AppiumLibrary.Click Element    ${AlmostDoneSendBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${BackToMessage}
    Sleep    3
    AppiumLibrary.Click Element    ${MyJourneyBackBTN}
    Sleep    5

Verify Send mesage data by Admin user
    Comment    Open Browser    http://fleetmastr.aecordigitalqa.com    ff
    Comment    Maximize Browser Window
    Comment    Selenium2Library.Input Text    //input[@placeholder='Username or Email']    aecortest2019@gmail.com
    Comment    ${PWS}    Set Variable    password
    Comment    Selenium2Library.Input Text    //input[@id='register_password']    ${PWS}
    Comment    Selenium2Library.Click Element    //button[@id='register-submit-btn']
    Log into Fleetmastr website
    Sleep    5
    Go To    ${MessagesURL}
    sleep    8
    Reload Page
    sleep    8
    Selenium2Library.Click Element    xpath=/html[1]/body[1]/div[2]/div[2]/div[1]/section[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[3]/div[3]/div[1]/table[1]/tbody[1]/tr[3]/td[7]
    Sleep    6
    Page Should Contain    100.00%
    Selenium2Library.Click Element    ${MessageHistoryReportCloseBTN}
    sleep    2
    Go To    ${LogoutURL}
    Sleep    2
    Close Browser

Send Standard message to user
    Comment    Open Browser    http://fleetmastr.aecordigitalqa.com    ff
    Comment    Maximize Browser Window
    Comment    Selenium2Library.Input Text    //input[@placeholder='Username or Email']    aecortest2019@gmail.com
    Comment    ${PWS}    Set Variable    password
    Comment    Selenium2Library.Input Text    //input[@id='register_password']    ${PWS}
    Comment    Selenium2Library.Click Element    //button[@id='register-submit-btn']
    Log into Fleetmastr website
    Sleep    5
    Go To    ${MessagesURL}
    sleep    5
    Selenium2Library.Click Element    ${SendMessageXP}
    Sleep    2
    Selenium2Library.Click Element    ${NoTemplateSelectedDD}
    Selenium2Library.Click Element    ${StandardTemplate}
    Selenium2Library.Click Element    ${UsersDD}
    Selenium2Library.Click Element    ${SelectUserXP}
    Selenium2Library.Click Element    ${SendMessageBTN}
    Sleep    2
    Selenium2Library.Click Element    ${ConfirmSendBTN}
    Sleep    3
    Page Should Contain    Message has been sent!
    sleep    2
    Go To    ${LogoutURL}
    Sleep    2
    Close Browser

Verify User Message inbox for Standard message
    AppiumLibrary.Click Element    ${MessageXP}
    Sleep    3
    AppiumLibrary.Input Text    ${SearchMessageBox}    Standard Message
    Sleep    2
    AppiumLibrary.Click Element    ${MessageTitle}
    Sleep    2
    AppiumLibrary.Click Element    ${MessageDescription}
    Sleep    2
    AppiumLibrary.Click Element    ${AlwaysAllowPermissionBTN}
    Sleep    3
    Page Should Contain Text    Standard message
    AppiumLibrary.Click Element    ${MyJourneyBackBTN}
    Sleep    2
    AppiumLibrary.Click Element    ${MyJourneyBackBTN}
    Sleep    5

Forgot password
    AppiumLibrary.Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=10    deviceName=192.168.0.103:5037    appPackage=com.aecor.fleetmastr    appActivity=com.aecor.fleetmastr.SplashActivity
    sleep    8
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
    Open Browser    https://accounts.google.com/signin/v2/identifier?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin    chrome
    Maximize Browser Window
    Selenium2Library.Input Text    //*[@id="identifierId"]    aecortest2019@gmail.com
    sleep    3
    Selenium2Library.Click Element    //*[@id="identifierNext"]
    Sleep    5
    Selenium2Library.Input Text    //*[@id="password"]/div[1]/div/div[1]/input    Aecor1234
    sleep    3
    Selenium2Library.Click Element    //*[@id="passwordNext"]/content/span
    sleep    20
    Selenium2Library.Wait Until Element Is Visible    //*[@id="aso_search_form_anchor"]/div/input    timeout=20
    Selenium2Library.Input Text    //*[@id="aso_search_form_anchor"]/div/input    fleetmastr - reset your account password
    sleep    2
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

Take out vehicle - with trailer
    AppiumLibrary.Click Element    ${TakeoutVehicleBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${AlwaysAllowPermissionBTN}
    Sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    MK60SVC
    AppiumLibrary.Click Element    ${text}
    Sleep    3
    AppiumLibrary.Click Element    ${RememberVehileCB}
    Sleep    3
    AppiumLibrary.Click Element    ${ContinueBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${ConfVehDetailsConfirmBTN}
    Sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    9999999999
    sleep    2
    AppiumLibrary.Click Element    ${TextonPage}
    sleep    5
    AppiumLibrary.Click Element    ${ContinueBTN}
    Sleep    5
    AppiumLibrary.Click Element    ${ContinueButton}
    Sleep    3
    AppiumLibrary.Click Element    ${TrailerChcekYes}
    AppiumLibrary.Input Text    ${EnterTrailerIDTB}    1026
    AppiumLibrary.Click Element    ${TrailerCheckText}
    sleep    2
    AppiumLibrary.Click Element    ${ContinueButton}
    sleep    2
    Comment    Click Text    AdBlue
    Comment    Click text    Coolant
    Comment    Click text    Engine oil
    Comment    Click text    Screenwash
    Comment    Sleep    3
    Comment    Click text    Continue
    Comment    Sleep    3
    Comment    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_continue
    Sleep    3
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${BackButton}
    sleep    2
    AppiumLibrary.Click Element    ${SaveButton}
    sleep    5
    AppiumLibrary.Click Element    ${ResumevehicleCheck}
    sleep    5
    AppiumLibrary.Click Element    ${ContinueButton}
    Sleep    3
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    3
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    3
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    sleep    4
    Comment    AppiumLibrary.Scroll    id=com.aecor.fleetmastr:id/btn_safety_check    id=com.aecor.fleetmastr:id/btn_send
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Sleep    2
    AppiumLibrary.Click Element    ${AlmostDoneSendBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${NoconnectinSaveBTN}
    Sleep    10
    AppiumLibrary.Click Element    ${HomeBTN}
    Sleep    5

Take out vehicle - with trailer (defect) (safe to operate)
    AppiumLibrary.Click Element    ${TakeoutVehicleBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${AlwaysAllowPermissionBTN}
    Sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    MK60SVC
    AppiumLibrary.Click Element    ${text}
    Sleep    3
    AppiumLibrary.Click Element    ${RememberVehileCB}
    Sleep    3
    AppiumLibrary.Click Element    ${ContinueBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${ConfVehDetailsConfirmBTN}
    Sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    9999999999
    sleep    2
    AppiumLibrary.Click Element    ${EnterRegNoText}
    sleep    5
    AppiumLibrary.Click Element    ${ContinueBTN}
    Sleep    5
    AppiumLibrary.Click Element    ${ContinueButton}
    Sleep    3
    AppiumLibrary.Click Element    ${TrailerChcekYes}
    sleep    1
    AppiumLibrary.Input Text    ${EnterTrailerIDTB}    1026
    AppiumLibrary.Click Element    ${TrailerCheckText}
    sleep    2
    AppiumLibrary.Click Element    ${ContinueButton}
    sleep    2
    Comment    Click Text    AdBlue
    Comment    Click text    Coolant
    Comment    Click text    Engine oil
    Comment    Click text    Screenwash
    Comment    Sleep    3
    Comment    Click text    Continue
    Comment    Sleep    3
    Comment    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_continue
    Sleep    3
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${BackButton}
    sleep    2
    AppiumLibrary.Click Element    ${SaveButton}
    sleep    5
    AppiumLibrary.Click Element    ${ResumevehicleCheck}
    sleep    5
    AppiumLibrary.Click Element    ${ContinueButton}
    Sleep    3
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    3
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    3
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Text    No
    Sleep    2
    AppiumLibrary.Click Element    ${DefectItemTB}
    sleep    2
    AppiumLibrary.Click Element    ${AllowCameraAccess}
    Sleep    2
    AppiumLibrary.Click Element    ${AllowCameraAccess}
    Sleep    2
    AppiumLibrary.Click Text    Take picture
    sleep    4
    AppiumLibrary.Click Text    OK
    Sleep    2
    AppiumLibrary.Click Element    ${CancelBTN}
    Sleep    2
    AppiumLibrary.Click Element    ${SaveImageBTN}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    sleep    4
    Comment    AppiumLibrary.Scroll    id=com.aecor.fleetmastr:id/btn_safety_check    id=com.aecor.fleetmastr:id/btn_send
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Sleep    2
    AppiumLibrary.Click Element    ${AlmostDoneSendBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${SafeToOperateBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${SendReportConfBTN}
    Sleep    10
    AppiumLibrary.Click Element    ${HomeBTN}
    Sleep    8

Verify user can not logout if vehicle is taken.
    sleep    5
    AppiumLibrary.Click Element    ${AppLogoutXP}
    Sleep    2
    AppiumLibrary.Page Should Contain Text    Please return your vehicle before logging out.
    sleep    2
    AppiumLibrary.Click Element    ${ApplogoutCloseBTN}
    sleep    3

Return vehicle after vehicle takeout
    AppiumLibrary.Click Element    ${TakeOutReturnCheck}
    Sleep    6
    AppiumLibrary.Click Element    ${ContinueBTN}
    sleep    2
    Comment    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/enter_registration_number    MK60SVC
    Comment    sleep    2
    Comment    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/textView11
    Comment    sleep    2
    Comment    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Comment    Sleep    5
    Comment    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/btn_continue
    Sleep    5
    AppiumLibrary.Click Element    ${RegNumberIputXP}
    sleep    1
    AppiumLibrary.Input Text    ${RegNumberIputXP}    9999999999
    sleep    1
    AppiumLibrary.Click Element    ${EnterRegNoText}
    sleep    2
    AppiumLibrary.Click Element    ${EnterRegNoConfirmBTN}
    sleep    2
    AppiumLibrary.Click Element    ${ContinueButton}
    sleep    4
    AppiumLibrary.Click Element    ${OptionYes}
    sleep    2
    AppiumLibrary.Input Text    ${EnterTrailerIDTB}    1026
    AppiumLibrary.Click Element    ${TrailerCheckText}
    sleep    2
    AppiumLibrary.Click Element    ${ContinueButton}
    sleep    4
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
    AppiumLibrary.Click Element    ${ReturnCheckContinueBTN}
    Sleep    5
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    AppiumLibrary.Click Element    ${AlmostDoneSendBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${NoconnectinSaveBTN}
    Sleep    10
    AppiumLibrary.Click Element    ${HomeBTN}
    Sleep    8

Resolve Vehicle defect (Trailer)
    AppiumLibrary.Click Element    ${ResolveDefectBTN}
    sleep    3
    AppiumLibrary.Click Element    ${AlwaysAllowPermissionBTN}
    Sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    MK60SVC
    sleep    1
    AppiumLibrary.Click Element    ${EnterRegNoText}
    sleep    1
    AppiumLibrary.Click Element    ${EnterRegNoConfirmBTN}
    sleep    5
    AppiumLibrary.Click Element    ${ConfVehDetailsConfirmBTN}
    sleep    3
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    sleep    5
    AppiumLibrary.Click Text    ${CouplingSecurityText}
    sleep    2
    AppiumLibrary.Click Text    ${BreakawaycabledamagedText}
    sleep    2
    AppiumLibrary.Click Element    ${WorkshopDD}
    sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    sleep    2
    Swipe By Percent    80    80    60    60
    sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    sleep    2
    Swipe By Percent    80    80    60    60
    sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    sleep    2
    Swipe By Percent    80    80    60    60
    sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    sleep    2
    Swipe By Percent    80    80    60    60
    sleep    2
    AppiumLibrary.Click Text    Other
    sleep    2
    AppiumLibrary.Click Element    ${OtherOption}
    sleep    2
    AppiumLibrary.Input Text    ${OtherOption}    1026
    sleep    2
    AppiumLibrary.Click Text    Workshop
    sleep    2
    AppiumLibrary.Click Element    ${EngineerFirstNameTB}
    sleep    2
    AppiumLibrary.Input Text    ${EngineerFirstNameTB}    Manjil
    sleep    2
    AppiumLibrary.Click Text    Workshop
    sleep    2
    AppiumLibrary.Input Text    ${EngineerLastNameTB}    Upadhyay
    sleep    2
    AppiumLibrary.Click Text    Complete details below to resolve defect.
    sleep    2
    AppiumLibrary.Input Text    ${JobDetailsTB}    123456
    sleep    2
    AppiumLibrary.Click Text    Job details*
    sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    sleep    1
    AppiumLibrary.Click Element    ${JobdetailscameraBTN}
    sleep    2
    AppiumLibrary.Click Element    ${SeleceCmeraBTN}
    sleep    2
    AppiumLibrary.Click Element    ${AllowCameraAccess}
    sleep    2
    AppiumLibrary.Click Element    ${AllowCameraAccess}
    sleep    2
    AppiumLibrary.Click Text    ${TakePicture}
    sleep    4
    AppiumLibrary.Click Text    ${OK}
    sleep    4
    AppiumLibrary.Input Text    ${AdditionalInformationTB}    Test
    sleep    2
    AppiumLibrary.Click Text    Additional information
    sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    sleep    2
    AppiumLibrary.Click Element    ${AdditionalInfoCameraBTN}
    sleep    1
    AppiumLibrary.Click Element    ${SeleceCmeraBTN}
    sleep    2
    AppiumLibrary.Click Text    ${TakePicture}
    sleep    4
    AppiumLibrary.Click Text    ${OK}
    sleep    2
    Swipe By Percent    80    80    40    40
    Sleep    5
    AppiumLibrary.Click Element    ${ResolveDefectConfBTN}
    sleep    2
    AppiumLibrary.Click Element    ${SafeToOperateBTN}
    sleep    2
    AppiumLibrary.Click Element    ${SendReportConfBTN}
    sleep    7
    AppiumLibrary.Click Element    ${HomeBTN}
    sleep    8

Add Insurance Details (Web)
    Comment    Selenium2Library.Open Browser    https://fleetmastr.aecordigitalqa.com/home    ff
    Comment    sleep    3
    Comment    Selenium2Library.Go to    https://fleetmastr.aecordigitalqa.com/home
    Comment    sleep    5
    Comment    Selenium2Library.Input Text    //input[@type="text"]    aecortest2019@gmail.com
    Comment    sleep    3
    Comment    Selenium2Library.Input Text    //input[@type="password"]    password
    Comment    sleep    3
    Comment    Selenium2Library.Click Element    //*[@id="register-submit-btn"]
    Log into Fleetmastr website
    sleep    5
    go to    ${Settingspage}
    sleep    5
    Selenium2Library.Click Element    ${InsuranceDetailsOPT}
    sleep    3
    Selenium2Library.Input Text    ${CompanyNameXP}    ${InsuranceCompanyname}
    Set Global Variable    ${InsuranceCompanyname}
    Selenium2Library.Input Text    ${TelephoneNoXP}    ${TelephoneNo}
    Set Global Variable    ${TelephoneNo}
    Selenium2Library.Input Text    ${PolicyNoXP}    ${PolicyNo}
    Set Global Variable    ${PolicyNo}
    Selenium2Library.Input Text    ${PolicyNameXP}    ${PolicyName}
    Set Global Variable    ${PolicyName}
    Comment    Selenium2Library.Click Element    //input[@name="insurance_file_input_name"]
    sleep    2
    Selenium2Library.Click Element    ${SubmitInsuranceBTN}
    sleep    2
    Selenium2Library.Close Browser

Report vehicle incident
    AppiumLibrary.Click Element    ${ReportIncidentBTN}
    sleep    5
    AppiumLibrary.Click Element    ${AlwaysAllowPermissionBTN}
    sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    MK60SVC
    sleep    1
    AppiumLibrary.Click Element    ${EnterRegNoText}
    sleep    1
    AppiumLibrary.Click Element    ${EnterRegNoConfirmBTN}
    sleep    5
    AppiumLibrary.Click Element    ${ConfVehDetailsConfirmBTN}
    sleep    3
    AppiumLibrary.Click Element    ${KeyStepsContBTN}
    sleep    2
    AppiumLibrary.Click Element    ${TypeofIcidentBTN}
    sleep    2
    AppiumLibrary.Click Text    Pedestrian incident
    sleep    2
    AppiumLibrary.Click Element    ${ClassificationBTN}
    sleep    2
    AppiumLibrary.Click Text    Sideswipe collision
    sleep    2
    AppiumLibrary.Click Element    ${ReportToInsuranceChkBox}
    sleep    2
    AppiumLibrary.Click Element    ${SaveBTN}
    Comment    sleep    5
    Comment    AppiumLibrary.Click Text    Choose an option below to get started
    sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/ll_resume_report_incident
    sleep    5
    AppiumLibrary.Click Element    ${ViewInsuranceDetails}
    sleep    2
    Comment    Selenium2Library.Page Should Contain    ${InsuranceCompanyname}
    Comment    Selenium2Library.Page Should Contain    Aecor Test
    Comment    Selenium2Library.Page Should Contain    ${TelephoneNo}
    Comment    Selenium2Library.Page Should Contain    ${PolicyNo}
    Comment    Selenium2Library.Page Should Contain    ${PolicyName}
    sleep    2
    AppiumLibrary.Click Element    ${InsuranceDetailsCloeBTN}
    sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    sleep    2
    AppiumLibrary.Click Element    ${InsuDetailsContBTN}
    sleep    2
    AppiumLibrary.Click Element    ${CaptureImageBTN}
    sleep    2
    AppiumLibrary.Click Element    ${SeleceCmeraBTN}
    sleep    2
    AppiumLibrary.Click Element    ${AllowCameraAccess}
    sleep    2
    AppiumLibrary.Click Element    ${AllowCameraAccess}
    sleep    2
    AppiumLibrary.Click Text    ${TakePicture}
    sleep    4
    AppiumLibrary.Click Text    ${OK}
    sleep    4
    AppiumLibrary.Click Element    ${InsuDetailsContBTN}
    sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    sleep    2
    AppiumLibrary.Click Element    ${AlmostDoneSendBTN}
    sleep    2
    AppiumLibrary.Click Element    ${SendReportConfBTN}
    sleep    8
    AppiumLibrary.Click Element    ${HomeBTN}
    sleep    2

Get report incident number (web)
    Comment    Selenium2Library.Open Browser    https://fleetmastr.aecordigitalqa.com/home    ff
    Comment    sleep    3
    Comment    Selenium2Library.Go to    https://fleetmastr.aecordigitalqa.com/home
    Comment    sleep    5
    Comment    Selenium2Library.Input Text    //input[@type="text"]    mupadhyay+56@aecordigital.com
    Comment    sleep    3
    Comment    Selenium2Library.Input Text    //input[@type="password"]    12345678
    Comment    sleep    3
    Comment    Selenium2Library.Click Element    //*[@id="register-submit-btn"]
    Log into Fleetmastr website
    sleep    5
    Selenium2Library.Go to    ${IncidentReportspage}
    sleep    5
    ${OldIncidentId}    selenium2library.get text    ${RecentIncidentNoXP}
    log    ${OldIncidentId}
    Set Global Variable    ${OldIncidentId}
    ${NewIncidentValueweb}    Evaluate    ${OldIncidentId}+1
    log    ${NewIncidentValueweb}
    Set Global Variable    ${NewIncidentValueweb}
    sleep    2
    Close Browser

Verify incident report in web
    Comment    sleep    2
    Comment    Selenium2Library.Open Browser    https://fleetmastr.aecordigitalqa.com/home    ff
    Comment    sleep    3
    Comment    Selenium2Library.Go to    https://fleetmastr.aecordigitalqa.com/home
    Comment    sleep    5
    Comment    Selenium2Library.Input Text    //input[@type="text"]    mupadhyay+56@aecordigital.com
    Comment    sleep    3
    Comment    Selenium2Library.Input Text    //input[@type="password"]    12345678
    Comment    sleep    3
    Comment    Selenium2Library.Click Element    //*[@id="register-submit-btn"]
    Log into Fleetmastr website
    sleep    5
    Selenium2Library.Go to    ${IncidentReportspage}
    sleep    5
    ${NewIncidentId}    selenium2library.get text    ${RecentIncidentNoXP}
    log    ${NewIncidentId}
    Set Global Variable    ${NewIncidentId}
    Should Be Equal As Numbers    ${NewIncidentId}    ${NewIncidentValueweb}
    sleep    2
    Selenium2Library.Click Element    ${SearchIncidentTB}
    Selenium2Library.input text    ${SearchIncidentTB}    ${NewIncidentValueweb}
    sleep    1
    Selenium2Library.Click Element    ${SubmitBTN}
    sleep    4
    Selenium2Library.Click Element    ${DetailsBTNXP}
    sleep    5
    ${Incidenttypeweb}    selenium2library.get text    ${IncidentTypeXP}
    log    ${Incidenttypeweb}
    should match    ${Incidenttypeweb}    Pedestrian incident
    ${Classification}    selenium2library.get text    ${IncidentClassificationXP}
    log    ${Classification}
    should match    ${Classification}    Sideswipe collision
    sleep    2
    close browser

Verify User can not add incident report if user is offline
    sleep    2
    Set Network Connection Status    0
    sleep    5
    AppiumLibrary.Click Element    ${ReportIncidentBTN}
    sleep    2
    Set Network Connection Status    2
    sleep    10
    AppiumLibrary.Click Element    ${ReportIncidentBTN}
    sleep    5
    AppiumLibrary.Click Element    ${AlwaysAllowPermissionBTN}
    sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    MK60SVC
    sleep    1
    AppiumLibrary.Click Element    ${EnterRegNoText}
    sleep    1
    AppiumLibrary.Click Element    ${EnterRegNoConfirmBTN}
    sleep    5
    AppiumLibrary.Click Element    ${ConfVehDetailsConfirmBTN}
    sleep    3
    AppiumLibrary.Click Element    ${KeyStepsContBTN}
    sleep    2
    AppiumLibrary.Click Element    ${TypeofIcidentBTN}
    sleep    3
    Set Network Connection Status    0
    sleep    5
    AppiumLibrary.Click Element    ${CancelBTN}
    sleep    5
    Set Network Connection Status    2
    sleep    10
    AppiumLibrary.Click Element    ${ReportIncidentBTN}
    sleep    5
    Comment    AppiumLibrary.Click Element    ${AlwaysAllowPermissionBTN}
    Comment    sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    MK60SVC
    sleep    1
    AppiumLibrary.Click Element    ${EnterRegNoText}
    sleep    1
    AppiumLibrary.Click Element    ${EnterRegNoConfirmBTN}
    sleep    5
    AppiumLibrary.Click Element    ${ConfVehDetailsConfirmBTN}
    sleep    3
    AppiumLibrary.Click Element    ${KeyStepsContBTN}
    sleep    2
    Set Network Connection Status    0
    sleep    7
    AppiumLibrary.Click Element    ${NoconnectinSaveBTN}
    sleep    6
    Set Network Connection Status    2
    sleep    10
    AppiumLibrary.Click Element    ${ResumeIncidentReportBTN}
    sleep    4
    AppiumLibrary.Click Element    ${TypeofIcidentBTN}
    sleep    2
    AppiumLibrary.Click Text    Pedestrian incident
    sleep    2
    AppiumLibrary.Click Element    ${ClassificationBTN}
    sleep    2
    AppiumLibrary.Click Text    Sideswipe collision
    sleep    2
    AppiumLibrary.Click Element    ${ReportToInsuranceChkBox}
    sleep    2
    AppiumLibrary.Click Element    ${SaveBTN}
    Comment    sleep    5
    Comment    AppiumLibrary.Click Text    Choose an option below to get started
    sleep    3
    AppiumLibrary.Click Element    ${ResumeIncidentReportBTN}
    sleep    5
    AppiumLibrary.Click Element    ${ViewInsuranceDetails}
    sleep    2
    Comment    Selenium2Library.Page Should Contain    ${InsuranceCompanyname}
    Comment    Selenium2Library.Page Should Contain    Aecor Test
    Comment    Selenium2Library.Page Should Contain    ${TelephoneNo}
    Comment    Selenium2Library.Page Should Contain    ${PolicyNo}
    Comment    Selenium2Library.Page Should Contain    ${PolicyName}
    sleep    2
    AppiumLibrary.Click Element    ${InsuranceDetailsCloeBTN}
    sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    sleep    2
    AppiumLibrary.Click Element    ${InsuDetailsContBTN}
    sleep    2
    AppiumLibrary.Click Element    ${CaptureImageBTN}
    sleep    2
    AppiumLibrary.Click Element    ${SeleceCmeraBTN}
    sleep    2
    AppiumLibrary.Click Element    ${AllowCameraAccess}
    sleep    2
    AppiumLibrary.Click Element    ${AllowCameraAccess}
    sleep    2
    AppiumLibrary.Click Text    ${TakePicture}
    sleep    4
    AppiumLibrary.Click Text    ${OK}
    sleep    4
    AppiumLibrary.Click Element    ${InsuDetailsContBTN}
    sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    sleep    2
    AppiumLibrary.Click Element    ${AlmostDoneSendBTN}
    sleep    2
    AppiumLibrary.Click Element    ${SendReportConfBTN}
    sleep    8
    AppiumLibrary.Click Element    ${HomeBTN}
    sleep    6

Verify user is not allowed to access Telematics tab in offline mode
    Set Network Connection Status    2
    sleep    10
    Set Network Connection Status    0
    sleep    5
    AppiumLibrary.Click Element    ${TelematicsBTN}
    sleep    2
    AppiumLibrary.Click Text    Choose an option below to get started
    sleep    4
    Set Network Connection Status    2
    sleep    10
    AppiumLibrary.Click Element    ${TelematicsBTN}
    sleep    4
    AppiumLibrary.Click Text    My Vehicle
    sleep    2
    AppiumLibrary.Click Element    ${MyJourneyBackBTN}
    sleep    8

Verify telematics details with no journey
    AppiumLibrary.Click Element    ${TelematicsBTN}
    sleep    4
    AppiumLibrary.Click Text    My Vehicle
    sleep    4
    AppiumLibrary.Page Should Contain Text    No information available
    sleep    2
    AppiumLibrary.Click Element    ${MyJourneyBTN}
    sleep    2
    AppiumLibrary.Page Should Contain Text    You have no journeys.
    sleep    2

Verify telematics details after vehicle take out
    AppiumLibrary.Click Element    ${TelematicsBTN}
    sleep    4
    AppiumLibrary.Click Text    My Vehicle
    sleep    4
    AppiumLibrary.Page Should Contain Text    No information available
    sleep    2
    AppiumLibrary.Click Element    ${MyJourneyBTN}
    sleep    2
    AppiumLibrary.Page Should Contain Text    You have no journeys.
    sleep    2

Telematics - Take out vehicle
    AppiumLibrary.Click Element    ${TakeoutVehicleBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${AlwaysAllowPermissionBTN}
    Sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    MK60SVC
    AppiumLibrary.Click Element    ${text}
    Sleep    3
    AppiumLibrary.Click Element    ${RememberVehileCB}
    Sleep    3
    AppiumLibrary.Click Element    ${ContinueBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${ContinueBTN}
    Sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    9999999999
    sleep    2
    AppiumLibrary.Click Element    ${EnterRegNoText}
    sleep    5
    AppiumLibrary.Click Element    ${EnterRegNoConfirmBTN}
    Sleep    5
    AppiumLibrary.Click Element    ${ContinueButton}
    Sleep    3
    AppiumLibrary.Click Element    ${TrailerChcekYes}
    AppiumLibrary.Input Text    ${EnterTrailerIDTB}    1026
    AppiumLibrary.Click Element    ${TrailerCheckText}
    sleep    2
    AppiumLibrary.Click Element    ${ContinueButton}
    sleep    2
    Comment    Click Text    AdBlue
    Comment    Click text    Coolant
    Comment    Click text    Engine oil
    Comment    Click text    Screenwash
    Comment    Sleep    3
    Comment    Click text    Continue
    Comment    Sleep    3
    Comment    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_continue
    Sleep    3
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    3
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    3
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    Sleep    2
    AppiumLibrary.Click Element    ${OptionYes}
    sleep    4
    Comment    AppiumLibrary.Scroll    id=com.aecor.fleetmastr:id/btn_safety_check    id=com.aecor.fleetmastr:id/btn_send
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    40    40
    Sleep    2
    AppiumLibrary.Click Element    ${AlmostDoneSendBTN}
    Sleep    3
    AppiumLibrary.Click Element    ${SendReportConfBTN}
    Sleep    10
    AppiumLibrary.Click Element    ${HomeBTN}
    Sleep    8

Telematics - Create new vehicle with telematics option NO
    Comment    Selenium2Library.Open Browser    about:blank    chrome
    Comment    sleep    3
    Comment    Selenium2Library.Go to    https://fleetmastr.aecordigitalqa.com/home
    Comment    sleep    5
    Comment    Selenium2Library.Input Text    //input[@type="text"]    mupadhyay+56@aecordigital.com
    Comment    sleep    3
    Comment    Selenium2Library.Input Text    //input[@type="password"]    12345678
    Comment    sleep    3
    Comment    Selenium2Library.Click Element    //*[@id="register-submit-btn"]
    Log into Fleetmastr website
    sleep    5
    Maximize Browser Window
    Selenium2Library.Go to    ${CreateVehiclePage}
    sleep    2
    ${RegNo}    Generate Random String    6    ${RandomCombinations}
    Set Global Variable    ${RegNo}
    Selenium2Library.Input Text    //*[@name="registration"]    ${RegNo}
    sleep    1
    Selenium2Library.Click Element    //*[@class="select2-container form-control select2me"]
    sleep    2
    Selenium2Library.Press Key    \    \\13
    sleep    1
    Selenium2Library.Click Element    //*[@id="status"]/option[4]
    sleep    1
    Selenium2Library.Click Element    //*[@id="usage_type"]/option[1]
    sleep    1
    Selenium2Library.Click Element    //*[@id="vehicle_division"]/option[6]
    sleep    1
    Selenium2Library.Click Element    //*[@id="vehicle_region"]/option[5]
    sleep    1
    Selenium2Library.Click Element    //*[@id="s2id_is_telematics_enabled"]
    sleep    2
    Selenium2Library.Click Element    //*[@id="saveVehicleBtn"]

Telematics - Verify vehicle telematics data with telematics option NO
    sleep    2
    AppiumLibrary.Click Element    ${TelematicsBTN}
    sleep    4
    AppiumLibrary.Click Text    My Vehicle
    sleep    4
    AppiumLibrary.Page Should Contain Text    Telematics is not available for this vehicle.
    sleep    2
    AppiumLibrary.Click Element    ${MyJourneyBackBTN}
    sleep    2

Telematics - Verify vehicle telematics data with telematics option YES
    sleep    2
    AppiumLibrary.Click Element    ${TelematicsBTN}
    sleep    4
    AppiumLibrary.Click Element    ${MyJourneyBTN}
    sleep    4
    AppiumLibrary.Click Text    MK60SVC
    sleep    8
    AppiumLibrary.Page Should Contain Text    Journey Details
    sleep    2
    AppiumLibrary.Page Should Contain Text    Start
    sleep    2
    AppiumLibrary.Page Should Contain Text    End
    sleep    2
    AppiumLibrary.Click Element    ${MyJourneyBackBTN}
    sleep    2
    AppiumLibrary.Click Text    My Vehicle
    sleep    5
    AppiumLibrary.Page Should Contain Text    Last Location
    sleep    2
    Comment    AppiumLibrary.Swipe    80    80    0    0
    Comment    sleep    2
    Comment    AppiumLibrary.Page Should Contain Text    Miles
    Comment    sleep    2
    Comment    AppiumLibrary.Page Should Contain Text    Service
    Comment    sleep    2
    Comment    AppiumLibrary.Swipe    80    80    0    0
    Comment    sleep    2
    Comment    AppiumLibrary.Page Should Contain Text    Last Journey Summary
    Comment    sleep    2
    AppiumLibrary.Click Element    ${MyJourneyBackBTN}
    sleep    2
    sleep    2

Telematics - Turn on telematics option YES for vehicle from WEB
    Comment    Selenium2Library.Open Browser    about:blank    ff
    Comment    sleep    3
    Comment    Selenium2Library.Go to    https://fleetmastr.aecordigitalqa.com/home
    Comment    sleep    5
    Comment    Selenium2Library.Input Text    //input[@type="text"]    mupadhyay+56@aecordigital.com
    Comment    sleep    3
    Comment    Selenium2Library.Input Text    //input[@type="password"]    12345678
    Comment    sleep    3
    Comment    Selenium2Library.Click Element    //*[@id="register-submit-btn"]
    Log into Fleetmastr website
    sleep    5
    Maximize Browser Window
    go to    ${SearchVehiclePage}
    sleep    5
    go to    ${EditVehicleURL}
    sleep    5
    Execute Javascript    window.scroll(0,1000)
    sleep    2
    Execute Javascript    window.scroll(0,1500)
    sleep    2
    Comment    Selenium2Library.Click Element    //*[@id="select2-chosen-1"]
    Comment    sleep    1
    Comment    Selenium2Library.Input Text    //*[@id="s2id_autogen1_search"]    MK60SVC
    Comment    sleep    2
    Comment    Selenium2Library.Press Key    \    \\13
    Comment    sleep    2
    Comment    Selenium2Library.Click Element    //button[@type="submit"]
    Comment    sleep    2
    Comment    Selenium2Library.Click Element    //a[@title="Details"]
    Comment    sleep    5
    Comment    Selenium2Library.Click Element    //*[@id="edit-vehicle-btn"]
    Selenium2Library.Click Element    ${TelematicsXP}
    sleep    2
    send    {DOWN}
    sleep    2
    send    {ENTER}
    sleep    2
    Execute Javascript    window.scroll(0,1000)
    sleep    2
    Selenium2Library.Click Element    ${SaveVehicleDetails}
    sleep    5
    Close Window

Telematics - Turn on telematics option NO for vehicle from WEB
    Comment    Selenium2Library.Open Browser    about:blank    ff
    Comment    sleep    3
    Comment    Selenium2Library.Go to    https://fleetmastr.aecordigitalqa.com/home
    Comment    sleep    5
    Comment    Selenium2Library.Input Text    //input[@type="text"]    mupadhyay+56@aecordigital.com
    Comment    sleep    3
    Comment    Selenium2Library.Input Text    //input[@type="password"]    12345678
    Comment    sleep    3
    Comment    Selenium2Library.Click Element    //*[@id="register-submit-btn"]
    Log into Fleetmastr website
    sleep    5
    Maximize Browser Window
    go to    ${SearchVehiclePage}
    sleep    5
    go to    ${EditVehicleURL}
    sleep    5
    Execute Javascript    window.scroll(0,1000)
    sleep    2
    Execute Javascript    window.scroll(0,1500)
    sleep    2
    Comment    Selenium2Library.Click Element    //*[@id="select2-chosen-1"]
    Comment    sleep    1
    Comment    Selenium2Library.Input Text    //*[@id="s2id_autogen1_search"]    MK60SVC
    Comment    sleep    2
    Comment    Selenium2Library.Press Key    \    \\13
    Comment    sleep    2
    Comment    Selenium2Library.Click Element    //button[@type="submit"]
    Comment    sleep    2
    Comment    Selenium2Library.Click Element    //a[@title="Details"]
    Comment    sleep    5
    Comment    Selenium2Library.Click Element    //*[@id="edit-vehicle-btn"]
    Selenium2Library.Click Element    ${TelematicsXP}
    sleep    2
    send    {UP}
    sleep    2
    send    {ENTER}
    sleep    2
    Execute Javascript    window.scroll(0,1000)
    sleep    2
    Selenium2Library.Click Element    ${SaveVehicleDetails}
    sleep    5
    Close Window

Return vehicle - Resolve Vehicle defect (Trailer)
    AppiumLibrary.Click Element    ${ResolveDefectBTN}
    sleep    3
    Comment    AppiumLibrary.Click Element    ${AlwaysAllowPermissionBTN}
    Comment    Sleep    3
    AppiumLibrary.Input Text    ${RegNumberIputXP}    MK60SVC
    sleep    1
    AppiumLibrary.Click Element    ${EnterRegNoText}
    sleep    1
    AppiumLibrary.Click Element    ${EnterRegNoConfirmBTN}
    sleep    5
    AppiumLibrary.Click Element    ${ConfVehDetailsConfirmBTN}
    sleep    3
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    sleep    2
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    60    60
    sleep    2
    AppiumLibrary.Click Text    Hand Cleaning Station
    sleep    2
    AppiumLibrary.Click Text    Hand cleaning station damaged
    sleep    2
    AppiumLibrary.Click Element    ${WorkshopDD}
    sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    sleep    2
    Swipe By Percent    80    80    60    60
    sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    sleep    2
    Swipe By Percent    80    80    60    60
    sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    sleep    2
    Swipe By Percent    80    80    60    60
    sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    sleep    2
    Swipe By Percent    80    80    60    60
    sleep    2
    AppiumLibrary.Click Text    Other
    sleep    2
    AppiumLibrary.Click Element    ${OtherOption}
    sleep    2
    AppiumLibrary.Input Text    ${OtherOption}    1026
    sleep    2
    AppiumLibrary.Click Text    Workshop
    sleep    2
    AppiumLibrary.Click Element    ${EngineerFirstNameTB}
    sleep    2
    AppiumLibrary.Input Text    ${EngineerFirstNameTB}    Manjil
    sleep    2
    AppiumLibrary.Click Text    Workshop
    sleep    2
    AppiumLibrary.Input Text    ${EngineerLastNameTB}    Upadhyay
    sleep    2
    AppiumLibrary.Click Text    Complete details below to resolve defect.
    sleep    2
    AppiumLibrary.Input Text    ${JobDetailsTB}    123456
    sleep    2
    AppiumLibrary.Click Text    Job details*
    sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    sleep    1
    AppiumLibrary.Click Element    ${JobdetailscameraBTN}
    sleep    2
    AppiumLibrary.Click Element    ${SeleceCmeraBTN}
    Comment    sleep    2
    Comment    AppiumLibrary.Click Element    ${AllowCameraAccess}
    Comment    sleep    2
    Comment    AppiumLibrary.Click Element    ${AllowCameraAccess}
    sleep    2
    AppiumLibrary.Click Text    ${TakePicture}
    sleep    4
    AppiumLibrary.Click Text    ${OK}
    sleep    4
    AppiumLibrary.Input Text    ${AdditionalInformationTB}    Test
    sleep    2
    AppiumLibrary.Click Text    Additional information
    sleep    2
    Swipe By Percent    80    80    40    40
    Swipe By Percent    80    80    60    60
    sleep    2
    AppiumLibrary.Click Element    ${AdditionalInfoCameraBTN}
    sleep    1
    AppiumLibrary.Click Element    ${SeleceCmeraBTN}
    sleep    2
    AppiumLibrary.Click Text    ${TakePicture}
    sleep    4
    AppiumLibrary.Click Text    ${OK}
    sleep    2
    Swipe By Percent    80    80    40    40
    Sleep    5
    AppiumLibrary.Click Element    ${ResolveDefectConfBTN}
    sleep    2
    AppiumLibrary.Click Element    ${SafeToOperateBTN}
    sleep    2
    AppiumLibrary.Click Element    ${SendReportConfBTN}
    sleep    7
    AppiumLibrary.Click Element    ${HomeBTN}
    sleep    2

Verify
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/takeOutReturnCheck
    Sleep    6
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    sleep    2
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/enter_registration_number    MK60SVC
    sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/textView11
    sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnContinue
    Sleep    5
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/btn_continue
    Sleep    5
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/radio_yes
    sleep    1
    AppiumLibrary.Input Text    com.aecor.fleetmastr:id/et_input_yes    9999999999
    sleep    1
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/question_text
    sleep    2
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/btn_continue
    sleep    2
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
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_all_ok
    Sleep    5
    Swipe By Percent    80    80    60    60
    Swipe By Percent    80    80    50    50
    Sleep    2
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_send
    Sleep    3
    AppiumLibrary.Click Element    com.aecor.fleetmastr:id/btn_positive
    Sleep    10
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btnHome
    Sleep    5

Log into Fleetmastr website
    Selenium2Library.Open Browser    about:blank    ff
    sleep    3
    Selenium2Library.Go to    ${FleetmastrQA}
    sleep    5
    Selenium2Library.Input Text    ${UsernameTB}    mupadhyay+56@aecordigital.com
    sleep    3
    Selenium2Library.Input Text    ${PasswordTB}    12345678
    sleep    3
    Selenium2Library.Click Element    ${LoginBTN}
    sleep    5
    Maximize Browser Window
