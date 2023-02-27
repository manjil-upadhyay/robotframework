*** Settings ***
Library           Selenium2Library
Library           openpyxl.reader.excel
Library           String
Library           SikuliLibrary
Library           AppiumLibrary
Library           AutoItLibrary
Variables         ../Fleetmastr.py

*** Test Cases ***
Login Logout
    [Documentation]    QA - 17
    ...    ----------------------------------
    ...    Login into FM user with valid user name and password.
    ...
    ...    -----------------------------------------
    ...    Total Run Time:
    ...    00:00:25
    Log in into Fleet Mastr
    Log Out from Fleet Mastr
    [Teardown]    Close Browser

Dashboard
    [Documentation]    Dashboard
    ...    --------------------------
    ...    Verify basic functionality of Dashboard page.
    ...    -------------------------
    ...    Total Run Time:
    ...    00:09:02
    Log in into Fleet Mastr
    Verify clicks in Vehicle Fleet Statistics
    Verify clicks in Today's Vehicle Checks
    Filter graph for Vehicles Off Road
    Filter Upcoming Inspections
    Verify clicks in Upcoming Inspections
    Filter Upcoming Expires
    Verify clicks in Upcoming Expires
    Log Out from Fleet Mastr

FLeet planning
    [Documentation]    Vehicle planning
    ...    --------------------------
    ...    Add a vehicle and basic functionality of Vehicle planning page.
    ...    -------------------------
    ...    Prerequisitions:
    ...    Registration number and chassis number to be updated in add a vehicle.
    ...    --------------------------
    ...    Total Run Time:
    ...    00:01:33
    Log in into Fleet Mastr
    Add a vehicle on Fleet planning page
    Search results using the “All regions” value on Vehicle planning page
    Search results using the “Enter vehicle registration” value on Vehicle planning page
    Search results using the “Select search” value on Vehicle planning page
    Download/export a report on Vehicle planning page
    Reset Column for Fleet Planning
    Log Out from Fleet Mastr

Fleet planning - Calendar tab
    [Documentation]    Vehicle planning
    ...    --------------------------
    ...    Add a vehicle and basic functionality of Vehicle planning page.
    ...    -------------------------
    ...    Prerequisitions:
    ...    Registration number and chassis number to be updated in add a vehicle.
    ...    --------------------------
    ...    Total Run Time:
    ...    00:01:33
    Log in into Fleet Mastr
    Verify Details of Calendar Tab
    Log Out from Fleet Mastr

Vehicle checks
    [Documentation]    Vehicle checks
    ...    -------------------------------------------------
    ...    Verify User can click on a check, edit it , add and edit a defect and basic functionality of Vehicle checks page.
    ...    -----------------------------------------
    ...    Prerequisitions:
    ...
    ...    -----------------------------------------------
    ...    Total Run Time:
    ...    00:01:22
    Comment    Create a check in App
    Log in into Fleet Mastr
    Search results using the “Enter vehicle registration” value on Vehicle checks page
    Search results using the “Regions” value on Vehicle checks page
    Search results using the “Select check result” value on Vehicle checks page
    Search results using the “Report date” value on Vehicle checks page
    Change the columns selected on the page via the column management pop-up on Vehicle checks page
    Reset the columns on Vehicle checks page
    Download/export a report on Vehicle checks page
    View vehicle check
    Export vehicle check
    Edit a vehicle check
    Log Out from Fleet Mastr

Vehicle Defect
    [Documentation]    QA - 25
    ...    -------------------------------------------------
    ...    Verify User can Add a defect, edit it and basic functionality of Vehicle defects page.
    ...    -----------------------------------------
    ...    Prerequisitions:
    ...    Update Registration number in 'Add new defect'.
    ...    Update Registration number in search.
    ...    Change file in add a file
    ...    -----------------------------------------------
    ...    Total Run Time:
    ...    00:03:25
    Log in into Fleet Mastr
    Create New Vehicle on Vehicle search page
    Add new defect on Vehicle defects page
    Search results using the “Enter defect ID” value on Vehicle defects page
    Clear a search on Vehicle defects page
    Search results using the “Enter vehicle registration” value on Vehicle defects page
    Edit a defect on Vehicle defects page
    Add a new comment on Vehicle defects page
    Add a file on Vehicle defects page
    Change the columns selected on the page via the column management pop-up on Vehicle defects page
    Reset the columns on Vehicle defects page
    Download/export a report on Vehicle defects page
    Log Out from Fleet Mastr

Report Incident page
    [Documentation]    Dashboard
    ...    --------------------------
    ...    Verify basic functionality of Dashboard page.
    ...    -------------------------
    ...    Total Run Time:
    ...    00:09:02
    [Tags]    SmokeTest
    Log in into Fleet Mastr
    Create Report Incident
    Search Incident report
    Edit Incident report
    Upload document and add commnet in Incident report
    Change the columns selected on the page via the column management pop-up on Report Incident page
    Reset the columns on Report Incident page
    Download/export a report on Report incident page
    Log Out from Fleet Mastr

Vehicle Profile
    [Documentation]    QA - 20
    ...    -----------------------------------
    ...    Verify User can add new vehicle profile, edit it and basic functionality of Vehicle profile page.
    ...    -------------------------------------
    ...    Prerequisitions:
    ...    Change image in edit created vehicle profile
    ...    --------------------------------------
    ...    Total Run Time:
    ...    00:02:39
    Log in into Fleet Mastr
    Create New Vehicle Profile
    Clear a search on Vehicle Profile page
    Search Created Vehicle Profile
    Comment    Access the vehicle profile page
    Edit Created Vehicle Profile
    Change the columns selected on the page via the column management pop-up on Vehicle Profile page
    Reset the columns on Vehicle Profile page
    Download/export a report on Vehicle Profile page
    Log Out from Fleet Mastr

Vehicle Search
    [Documentation]    QA - 19
    ...    --------------------------
    ...    Verify User can Add a vehicle, edit it and basic functionality of Vehicle search page.
    ...    -------------------------
    ...    Prerequisitions:
    ...    Update registration number and chassis number on 'Create New vehicle on Vehicle search page'.
    ...    Update registration number in 'Clear a search' and 'Search created vehicle'.
    ...    Change image file in edit created vehicle and add document as per your system path.
    ...    --------------------------
    ...    Total Run Time:
    ...    00:03:25
    [Tags]    smoke
    [Setup]
    Log in into Fleet Mastr
    Filter by “Checked today” on Vehicle page
    Filter by “Not checked today” on Vehicle page
    Filter by “All” on Vehicle page
    Search results using the “All manufacturers” value on Vehicle page
    Search results using the “All models” value on Vehicle page
    Search results using the “All types” value on Vehicle page
    Search results using the “All regions” value on Vehicle page
    Search results using the “Vehicle status” value on Vehicle page
    Create New Vehicle on Vehicle search page
    Clear a search on Vehicle page
    Search Created Vehicle
    Edit Created Vehicle
    Add a document in the “Manage documents” section
    Change the columns selected on the page via the column management pop-up on Vehicle page
    Reset the columns on Vehicle page
    Download/export a report on Vehicle page
    Log Out from Fleet Mastr

Workshops
    [Documentation]    QA - 24
    ...    -------------------------------------------------
    ...    Verify User can create New workshop user, edit it and basic functionality of Workshops page.
    ...    -----------------------------------------
    ...    Prerequisitions:
    ...    Update mail id number in 'Create new workshop user'.
    ...    -----------------------------------------------
    ...    Total Run Time:
    ...    00:01:54
    Log in into Fleet Mastr
    Change the columns selected on the page via the column management pop-up on Workshops page
    Reset the columns on Workshops page
    Download/export a report on Workshops page
    Create New Workshop User
    Clear a search on Workshops page
    Search results using the “Search by company name” value on Workshops page
    Edit user workshop record
    Show deleted users on Workshops page
    Log Out from Fleet Mastr
    Comment    Verify Account for Workshop User
    Comment    Close All Browsers

Messages Templates
    [Documentation]    QA - 22
    ...    --------------------------------
    ...    Verify User can create edit and delete new Groups and various Templates.
    ...
    ...    -----------------------------------
    ...    Total Run Time :
    ...    00:03:13
    Log in into Fleet Mastr
    Create New Group
    Edit Created Group
    Delete Created Group
    Create Standard Template
    Edit Standard Template
    Delete Standard Template
    Create MCQ Template
    Edit MCQ Template
    Delete MCQ Template
    Create Q&A Template
    Edit Q&A Template
    Delete Q&A Template
    Log Out from Fleet Mastr

Messages
    [Documentation]    QA - 23
    ...
    ...    --------------------------------
    ...    Verify Send message functionality.
    ...
    ...    -------------------------------------
    ...    Total Run Time:
    ...    00:00:42
    Log in into Fleet Mastr
    Create Standard Template
    Send Message
    Delete Standard Template
    Verify Message History tab
    Log Out from Fleet Mastr

Reports
    [Documentation]    QA - 21
    ...    ----------------------------------
    ...    Verify region report download functionality.
    ...
    ...
    ...    ---------------------------------------
    ...    Total Run Time:
    ...    00:01:55
    Log in into Fleet Mastr
    Download Last login standard report
    Download Last login custom report
    Download User check standard report
    Download User check custom report
    Download User defect standard report
    Download User defect custom report
    Download User detail standard report
    Download User detail custom report
    Download Vehicle check standard report
    Download Vehicle check custom report
    Download Vehicle defect standard report
    Download Vehicle defect custom report
    Download Vehicle detail standard report
    Download Vehicle detail custom report
    Download VOR standard report
    Download VOR custom report
    Log Out from Fleet Mastr

User Management
    [Documentation]    QA - 18
    ...    --------------------------
    ...    Verify User can Create New User, edit it and basic functionality of User Management page.
    ...    -------------------------
    ...    Prerequisitions:
    ...    Update the mail id number in 'Create New User'.
    ...    -------------------------
    ...    Total Run Time:
    ...    00:03:14
    Log in into Fleet Mastr
    Change the columns selected on the page via the column management pop-up on User management page
    Reset the columns on User management page
    Download/export a report on User management page
    Create New User
    Clear a search by last name on User management page
    Search by last name on User management page
    Edit user record on User management page
    Delete user record on User management page
    Log Out from Fleet Mastr
    Comment    Verify Account on Gmail Account
    Comment    Close All Browsers

Telematics
    [Documentation]    Planner
    ...    --------------------------
    ...    Export planner for a selected date.
    ...    -------------------------
    ...    Total Run Time:
    ...    00:00:41
    Log in into Fleet Mastr
    Go to    https://uat-skanska.fleetmastr.com/telematics
    sleep    5
    ${Vehicle}    Selenium2Library.Get Text    //*[@id="liveTabVehicleListFrontTab"]/ul/li[1]/a/div[3]/div
    log    ${Vehicle}
    Set Variable    ${Vehicle}
    Set Global Variable    ${Vehicle}
    sleep    1
    Selenium2Library.Click Element    //*[@id="s2id_searchBoxLiveMap"]
    Selenium2Library.Input Text    //*[@id="s2id_autogen1_search"]    ${Vehicle}
    sleep    1
    send    {ENTER}
    sleep    3
    Selenium2Library.Click Element    //*[@id="liveTabVehicleListFrontTab"]/ul/li/a
    sleep    5
    ${Driver}    Selenium2Library.Get Text    //*[@id="divLiveTimeLineSidebar"]/div[6]/div[1]/div[1]/div[2]
    log    ${Driver}
    Set Global Variable    ${Driver}
    ${Vehicle type}    Selenium2Library.Get Text    //*[@id="divLiveTimeLineSidebar"]/div[6]/div[1]/div[3]/div[2]
    log    ${Vehicle type}
    Set Global Variable    ${Vehicle type}
    ${Location}    Selenium2Library.Get Text    //*[@id="divLiveTimeLineSidebar"]/div[6]/div[1]/div[5]/div[2]
    log    ${Location}
    Set Global Variable    ${Location}
    ${Region}    Selenium2Library.Get Text    //*[@id="divLiveTimeLineSidebar"]/div[6]/div[1]/div[4]/div[2]
    log    ${Region}
    Set Global Variable    ${Region}
    sleep    1

General
    [Documentation]    General
    ...    -------------------------------------------------
    ...    Verify User can change password, change primary color, update the logo and switch defect mail notifications on/off on Settings page.
    ...    -----------------------------------------
    ...    Prerequisitions:
    ...    Change image in update logo
    ...
    ...    -----------------------------------------------
    ...    Total Run Time:
    ...    00:01:22
    Log in into Fleet Mastr
    Change their password
    Change the primary colour
    Update the logo
    Switch defect email notifications on/off
    Log Out from Fleet Mastr

Reset user password via the forgot password process
    [Documentation]    Reset user password via the forgot password process
    ...    -------------------------------------------------
    ...    Verify User can reset user password via the forgot password process
    ...    -----------------------------------------
    ...    Prerequisitions:
    ...
    ...    -----------------------------------------------
    ...    Total Run Time:
    ...    00:01:54
    Open Browser    http://uat-firstmile.fleetmastr.com    chrome
    Maximize Browser Window
    Selenium2Library.Click Element    xpath=.//u[contains(normalize-space(.), 'Forgot password?')]
    Sleep    2
    Selenium2Library.Input Text    xpath=(.//input[@placeholder='Email'][@type='email'])[last()]    aecortest2019@gmail.com
    Selenium2Library.Click Element    xpath=.//button[contains(normalize-space(.), 'Request reset link')][@type='submit']
    Sleep    2
    Page Should Contain    An email has been sent to you with a password reset link
    sleep    5
    Open Browser    https://accounts.google.com/signin/v2/identifier?continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&service=mail&sacu=1&rip=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin
    Maximize Browser Window
    Selenium2Library.Input Text    //*[@id="identifierId"]    aecortest2019@gmail.com
    Selenium2Library.Click Element    //*[@id="identifierNext"]/content
    Sleep    5
    Selenium2Library.Input Text    //*[@id="password"]/div[1]/div/div[1]/input    Aecor1234
    Selenium2Library.Click Element    //*[@id="passwordNext"]/content/span
    sleep    10
    Selenium2Library.Input Text    //*[@id="aso_search_form_anchor"]/div/input    fleetmastr - reset your account password
    Press Key    //*[@id="aso_search_form_anchor"]/div/input    \\13
    Sleep    10
    Selenium2Library.Click Element    xpath=/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div[2]/div[4]/div[1]/div/table/tbody/tr/td[6]/div/div/div[2]/span/span
    sleep    3
    Focus    xpath=.//a[contains(normalize-space(.), 'Reset your password')]
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Reset your password')]
    Sleep    5
    Select Window    NEW
    Selenium2Library.Input Text    //*[@id="password"]    srp9662654910
    Selenium2Library.Input Text    //*[@id="password_confirmation"]    srp9662654910
    Selenium2Library.Click Element    //*[@id="reset-submit-btn"]
    Sleep    5
    Page Should Contain    Your password has successfully been reset.
    Close All Browsers

test

*** Keywords ***
Log in into Fleet Mastr
    Selenium2Library.Open Browser    about:blank    gc
    Sleep    2
    Selenium2Library.Go to    ${FleetmastrQA}
    sleep    3
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Login to fleetmastr...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Input Text    ${UsernameTB}    ${UserID}
    sleep    1
    Selenium2Library.Input Text    ${PasswordTB}    ${UserPWD}
    sleep    1
    Selenium2Library.Click Element    ${LoginBTN}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:20%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Welcome User...!";document.body.appendChild(el);
    Sleep    2
    Maximize Browser Window

Log Out from Fleet Mastr
    Sleep    2
    Selenium2Library.Go To    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Mouse Over    ${AdminDD}
    Sleep    2
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:20%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Logout from application...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Link    ${LogoutUser}
    sleep    2
    Page Should Contain    Forgot password?

Create New User
    [Documentation]    Mail id number to be updated in create new user
    Go To    ${UserManagement}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Create new user functionality ...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${UMAddUserBTN}
    Sleep    3
    ${first}    Generate Random String    5    ${RandomCombinations}
    Log    ${first}
    Set Global Variable    ${first}
    Selenium2Library.Input Text    ${WSFirstName}    ${first}
    ${last}    Generate Random String    5    ${RandomCombinations}
    Log    ${last}
    Set Global Variable    ${last}
    Selenium2Library.Input Text    ${WSLastName}    ${last}
    Selenium2Library.Click Element    ${UMCompanyDD}
    Selenium2Library.Click Element    //div[contains(text(),'Aecor')]
    comment    Change mail id number
    Selenium2Library.Input Text    ${UMJobTitleTB}    QA
    Selenium2Library.Input Text    ${UMMobileTB}    95556565655
    Selenium2Library.Input Text    ${UMLandlineTB}    02655525656
    Selenium2Library.Input Text    ${UMEngineerIDTB}    HRSH008428
    Selenium2Library.Input Text    ${UMIMEITB}    565658 56565658 56565
    Selenium2Library.Click Element    ${UMEnableAccountDD}
    sleep    2
    Selenium2Library.Click Element    ${UMEnableAccountOptn}
    Sleep    1
    Selenium2Library.Wait Until Element Is Visible    ${UMLinemanagerDD}
    Selenium2Library.Click Element    ${UMLinemanagerDD}
    Sleep    5
    Selenium2Library.Input Text    ${UMLinemanagetSearch}    Adam Steele
    Sleep    2
    Selenium2Library.Click Element    ${UMLinemanagetSearchVal}
    Selenium2Library.Click Element    ${UMDivisionDD}
    Sleep    2
    Selenium2Library.Input Text    ${UMDivisionSearch}    BS Bristol Schools
    sleep    2
    Selenium2Library.Click Element    ${UMDivisionSearchVal}
    sleep    3
    Selenium2Library.Input Text    ${UMFuelcardTB}    02525820
    Selenium2Library.ClickElement    ${UMUserPermissionTab}
    Sleep    2
    Selenium2Library.WaitUntilPageContains    Admin permissions*:
    Sleep    2
    Selenium2Library.ClickElement    ${UmUserinformationRadio}
    Sleep    1
    Selenium2Library.ClickElement    ${UMVehiclePermissionTab}
    Sleep    1
    Selenium2Library.ClickElement    ${UMVehiclePermissionCB}
    Sleep    1
    Selenium2Library.ClickElement    ${UMUseeNotificationTab}
    Sleep    5
    Selenium2Library.Element Should Be Visible    ${UMAddUSerSaveBTN}
    Selenium2Library.Click Element    ${UMAddUSerSaveBTN}
    Sleep    1
    Page Should Contain    Data has been saved successfully.

Verify Account on Gmail Account
    Open Browser    https://accounts.google.com/signin/v2/identifier?continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&service=mail&sacu=1&rip=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin
    Maximize Browser Window
    Selenium2Library.Input Text    //*[@id="identifierId"]    aecortest2019@gmail.com
    Selenium2Library.Click Element    //*[@id="identifierNext"]/content
    Sleep    5
    Selenium2Library.Input Text    //*[@id="password"]/div[1]/div/div[1]/input    Aecor1234
    Selenium2Library.Click Element    //*[@id="passwordNext"]/content/span
    sleep    10
    Selenium2Library.Input Text    //*[@id="aso_search_form_anchor"]/div/input    fleetmastr - set your account password
    Press Key    //*[@id="aso_search_form_anchor"]/div/input    \\13
    Sleep    10
    Selenium2Library.Click Element    xpath=/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div[2]/div[4]/div[1]/div/table/tbody/tr[1]/td[6]/div/div/div[2]/span/span
    sleep    3
    Focus    xpath=.//a[contains(normalize-space(.), 'Set password')]
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Set password')]
    Sleep    5
    Select Window    NEW
    Selenium2Library.Input Text    //*[@id="password"]    srp9662654910
    Selenium2Library.Input Text    //*[@id="login-form"]/div[4]/div/input    srp9662654910
    Selenium2Library.Click Element    //*[@id="reset-submit-btn"]
    Sleep    5
    Page Should Contain    Your password has been set.

Create New Vehicle on Vehicle search page
    sleep    2
    Selenium2Library.Go To    ${Vehicles}
    Sleep    3
    Reload Page
    Sleep    5
    Selenium2Library.Element Should Be Visible    ${AddNewVehicleBTN}    10s
    Selenium2Library.Click Element    ${AddNewVehicleBTN}
    Sleep    2
    Selenium2Library.Page Should Contain    Add
    Comment    Change registration number
    ${RegNo}    Generate Random String    5    ${RandomCombinations}
    log    ${RegNo}
    Set Global Variable    ${RegNo}
    Selenium2Library.Input Text    ${RegistrationTB}    ${RegNo}
    Selenium2Library.Click Element    ${TypeDD}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${TypeDDSearchbox}
    Selenium2Library.Click Element    ${TypeDDSearchbox}
    Selenium2Library.Input Text    ${TypeDDSearchbox}    Aecor
    Press Key    ${TypeDDSearchbox}    \\13
    Sleep    4
    Selenium2Library.Click Element    ${VehicleStatusDD}
    Selenium2Library.Click Element    ${VehicleStatusDDsearchbox}
    Selenium2Library.Input Text    ${VehicleStatusDDsearchbox}    Roadworthy
    Press Key    ${VehicleStatusDDsearchbox}    \\13
    Sleep    3
    Selenium2Library.Element Should Be Visible    ${OwnershipStatusDD}
    Selenium2Library.Click Element    ${OwnershipStatusDD}
    Selenium2Library.Click Element    ${OwnershipStatusDDSearchbox}
    Selenium2Library.Input Text    ${OwnershipStatusDDSearchbox}    Contract
    Press Key    ${OwnershipStatusDDSearchbox}    \\13
    Selenium2Library.Element Should Be Visible    ${VehicleDivisionDD}
    Selenium2Library.Click Element    ${VehicleDivisionDD}
    Selenium2Library.Click Element    ${VehicleDivisionDDsearchbox}
    Selenium2Library.Input Text    ${VehicleDivisionDDsearchbox}    BS Bristol Schools
    Press Key    ${VehicleDivisionDDsearchbox}    \\13
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${VehicleRegionDD}
    Selenium2Library.Click Element    ${VehicleRegionDD}
    Sleep    2
    Selenium2Library.Click Element    ${VehicleRegionDDSearchbox}
    Selenium2Library.Input Text    ${VehicleRegionDDSearchbox}    Bristol
    Press Key    ${VehicleRegionDDSearchbox}    \\13
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${TelematicsDD}
    Selenium2Library.Click Element    ${TelematicsDD}
    Selenium2Library.Click Element    ${TelematicsDDVal}
    Selenium2Library.Element Should Be Visible    ${WebfleetRegistrationTB}
    Selenium2Library.Click Element    ${WebfleetRegistrationTB}
    ${webfleet_registration}    Generate Random String    5    ${RandomCombinations}
    Log    ${webfleet_registration}
    Set Global Variable    ${webfleet_registration}
    Selenium2Library.Input Text    ${WebfleetRegistrationTB}    123
    Execute Javascript    window.scroll(0,3600)
    Sleep    3
    Selenium2Library.Click Element    ${CreateVehicleSaveBTN}
    Sleep    3

Search created vehicle
    Selenium2Library.Go To    ${Vehicles}
    Sleep    3
    Comment    Change registration number same as in creation    Create New Vehicle on Vehicle search page
    Selenium2Library.Click Element    ${VSRegistrationTB}
    Sleep    2
    Selenium2Library.Click Element    ${VSRegistrationTBSearchbox}
    Selenium2Library.Input Text    ${VSRegistrationTBSearchbox}    ${RegNo}
    Press Key    ${VSRegistrationTBSearchbox}    \\13
    Sleep    2
    Selenium2Library.Click Element    ${VSSearchBTN2}
    Sleep    2
    Selenium2Library.Page Should Contain    Bristol
    Selenium2Library.Click Element    ${VSClearBTN2}

Edit created vehicle
    Sleep    2
    Selenium2Library.Go To    ${Vehicles}
    Sleep    4
    Selenium2Library.Click Element    ${VSRegistrationTB}
    Sleep    2
    Selenium2Library.Click Element    ${VSRegistrationTBSearchbox}
    sleep    2
    Selenium2Library.Input Text    ${VSRegistrationTBSearchbox}    ${RegNo}
    Press Key    ${VSRegistrationTBSearchbox}    \\13
    Sleep    2
    Selenium2Library.Click Element    ${VSSearchBTN2}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${ProfileEditIcon}
    Selenium2Library.Click Element    ${ProfileEditIcon}
    Sleep    5
    Selenium2Library.Input Text    ${OdometerReadingTB}    1
    Sleep    3
    Comment    Selenium2Library.Element Should Be Visible    xpath=/html/body/div[2]/div[2]/div/section/div[9]/div[1]/div[1]/form/div[1]/div[4]/div[2]/div[3]/div/div/span/button
    Comment    Selenium2Library.Click Element    xpath=/html/body/div[2]/div[2]/div/section/div[9]/div[1]/div[1]/form/div[1]/div[4]/div[2]/div[3]/div/div/span/button
    Comment    Sleep    1
    Comment    Selenium2Library.Click Element    //th[@class='prev']
    Comment    Sleep    2
    Comment    Selenium2Library.Click Element    //td[contains(text(),'9')]
    Selenium2Library.Element Should Be Visible    ${P11DListTB}
    Selenium2Library.Input Text    ${P11DListTB}    10
    Selenium2Library.Element Should Be Visible    ${ContractID}
    Selenium2Library.Input Text    ${ContractID}    ConTest09
    Selenium2Library.Element Should Be Visible    ${RepairMaintenancelocation}
    Selenium2Library.Click Element    ${RepairMaintenancelocation}
    Selenium2Library.Click Element    ${RepairMaintenancelocationSearchbox}
    Selenium2Library.Input Text    ${RepairMaintenancelocationSearchbox}    Oxford
    Press Key    ${RepairMaintenancelocationSearchbox}    \\13
    Selenium2Library.Element Should Be Visible    ${PermittedannualmileageTB}
    Selenium2Library.Click Element    ${PermittedannualmileageTB}
    Selenium2Library.Input Text    ${PermittedannualmileageTB}    18
    Sleep    2
    Execute Javascript    window.scroll(0,4410)
    Sleep    2
    Selenium2Library.Click Element    ${EditSaveBTN}
    Selenium2Library.Wait Until Page Contains    Data has been saved successfully.
    Sleep    5

Create New Vehicle Profile
    Go To    ${VehicleProfile}
    Sleep    5
    Selenium2Library.Wait Until Element Is Visible    ${vehicleProfilepage}
    Sleep    3
    Selenium2Library.Click link    ${AddnewvehicleprofileBTN}
    Sleep    3
    ${Profile}    Generate Random String    5    ${RandomCombinations}
    log    ${Profile}
    Set Global Variable    ${Profile}
    Selenium2Library.Input Text    ${TypeTB}    ${Profile}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${CategoryTB}
    Selenium2Library.Click Element    ${CategoryTB}
    Selenium2Library.Click Element    ${CategoryTBVal}
    Selenium2Library.Element Should Be Visible    ${SubcategoryTB}
    Selenium2Library.Click Element    ${SubcategoryTB}
    Selenium2Library.Click Element    ${SubcategoryTBVal}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${OdometerSettingTB}
    Selenium2Library.Click Element    ${OdometerSettingTB}
    Selenium2Library.Click Element    ${OdometerSettingTBVal}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${UsageTB}
    Selenium2Library.Click Element    ${UsageTB}
    Selenium2Library.Click Element    ${UsageTBVal}
    Selenium2Library.Element Should Be Visible    ${ManufacturerTB}
    Selenium2Library.Input Text    ${ManufacturerTB}    ${ManufacturerTBVal}
    Selenium2Library.Element Should Be Visible    ${ModelTB}
    Selenium2Library.Input Text    ${ModelTB}    ${ModelTBVal}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${FuelTypeTB}
    Sleep    2
    Selenium2Library.Click Element    ${FuelTypeTB}
    Selenium2Library.Click Element    ${FuelTypeTBval}
    Selenium2Library.Element Should Be Visible    ${EngineTypeTB}
    Sleep    2
    Selenium2Library.Click Element    ${EngineTypeTB}
    Selenium2Library.Click Element    ${EngineTypeTBVal}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${SubmitBTN}
    Selenium2Library.Click Element    ${SubmitBTN}
    Sleep    3
    Page should contain    Data has been saved successfully.
    Sleep    2

Search Created Vehicle Profile
    Go to    ${VehicleProfile}
    Sleep    3
    Selenium2Library.Element Should Be Visible    ${SearchProfileTB}
    Sleep    2
    Selenium2Library.Click Element    ${SearchProfileTB}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${SerchbyvehicleprofiletypeTB}
    Selenium2Library.Click Element    ${SerchbyvehicleprofiletypeTB}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${SerchvehicleprofileSearchBTN}
    Selenium2Library.Click Element    ${SerchvehicleprofileSearchBTN}
    Sleep    1
    Selenium2Library.Input Text    ${SerchvehicleprofileSearchBTN}    ${Profile}
    sleep    2
    Press Key    ${SerchvehicleprofileSearchBTN}    \\13
    Sleep    2
    Selenium2Library.Click Element    ${SelectSearch}
    Sleep    3
    Selenium2Library.Click Element    ${EditVehicleProfileBTN}
    Sleep    3

Edit Created Vehicle Profile
    Go to    ${VehicleProfile}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${SearchProfileTB}
    Sleep    5
    Selenium2Library.Click Element    ${SearchProfileDD}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${SerchbyvehicleprofiletypeTB}
    Selenium2Library.Click Element    ${SerchbyvehicleprofiletypeTB}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${SerchvehicleprofileSearchBTN}
    Selenium2Library.Click Element    ${SerchvehicleprofileSearchBTN}
    Sleep    1
    Selenium2Library.Input Text    ${SerchvehicleprofileSearchBTN}    ${Profile}
    sleep    2
    Press Key    ${SerchvehicleprofileSearchBTN}    \\13
    Sleep    2
    Selenium2Library.Click Element    ${SelectSearch}
    Sleep    5
    Selenium2Library.Element Should Be Visible    ${ProfileEditIcon}
    Selenium2Library.Click Element    ${ProfileEditIcon}
    Sleep    3
    Selenium2Library.Page Should Contain    Edit Vehicle Profile
    Selenium2Library.Click Element    ${CategoryTB}
    Selenium2Library.Click Element    ${CategoryTBVal}
    Selenium2Library.Element Should Be Visible    ${ManufacturerTB}
    Selenium2Library.Input Text    ${ManufacturerTB}    Manufacturer1
    Selenium2Library.Element Should Be Visible    ${ModelTB}
    Selenium2Library.Input Text    ${ModelTB}    Model1
    Selenium2Library.Element Should Be Visible    ${BodybuilderTB}
    Selenium2Library.Input Text    ${BodybuilderTB}    Bodybuilder1
    Selenium2Library.Element Should Be Visible    ${GrossVehicleTB}
    Selenium2Library.Input Text    ${GrossVehicleTB}    Weight1
    Selenium2Library.Element Should Be Visible    ${TyreSizeTB}
    Selenium2Library.Input Text    ${TyreSizeTB}    Hdrive1
    Selenium2Library.Element Should Be Visible    ${TyresizesteerTB}
    Selenium2Library.Input Text    ${TyresizesteerTB}    Hsteer1
    Selenium2Library.Element Should Be Visible    ${TyrePressureTB}
    Selenium2Library.Input Text    ${TyrePressureTB}    Sdrive1
    Selenium2Library.Element Should Be Visible    ${TyrePressuresteerTB}
    Selenium2Library.Input Text    ${TyrePressuresteerTB}    Ssteer1
    Selenium2Library.Element Should Be Visible    ${NutSizeTB}
    Selenium2Library.Input Text    ${NutSizeTB}    Nut size1
    Selenium2Library.Element Should Be Visible    ${RetorqueTB}
    Selenium2Library.Input Text    ${RetorqueTB}    Re-torque1
    Selenium2Library.Element Should Be Visible    ${LengthTB}
    Selenium2Library.Input Text    ${LengthTB}    501
    Selenium2Library.Element Should Be Visible    ${WidhtTB}
    Selenium2Library.Input Text    ${WidhtTB}    501
    Selenium2Library.Element Should Be Visible    ${HeightTB}
    Selenium2Library.Input Text    ${HeightTB}    501
    Selenium2Library.Element Should Be Visible    ${Co2TB}
    Selenium2Library.Input Text    ${Co2TB}    201
    Sleep    2
    Execute Javascript    window.scrollTo(0,0)
    Sleep    7
    Sleep    2
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${SubmitBTN}
    Selenium2Library.Click Element    ${SubmitBTN}
    Sleep    3
    Page should contain    Data has been saved successfully.
    Sleep    1
    Go to    ${VehicleProfile}

Region Report Download
    go to    ${Reportspage}
    sleep    5
    Selenium2Library.Click Element    //a[@id='top_level_week_to_date_vor_defect_btn']
    sleep    5
    Selenium2Library.Click Element    //option[contains(text(),'Previous month')]
    Selenium2Library.Click Element    //a[@id='top_level_month_to_date_defect_btn']
    sleep    5
    Selenium2Library.Click Element    //a[@id='top_level_week_to_date_vor_defect_btn']
    sleep    5
    Selenium2Library.Click Element    //select[@id='topLevelWeekToDateVorDefect']//option[contains(text(),'Previous week')]
    Selenium2Library.Click Element    //a[@id='top_level_week_to_date_vor_defect_btn']
    sleep    5
    Selenium2Library.Click Element    //a[@id='topLevelWeekToDateVorVehicleBtn']
    sleep    5
    Selenium2Library.Click Element    //select[@id='topLevelWeekToDateVorVehicle']//option[contains(text(),'Previous week')]
    Selenium2Library.Click Element    //a[@id='topLevelWeekToDateVorVehicleBtn']
    sleep    5
    Selenium2Library.Click Element    xpath=//*[@id="north_week_to_date_vordefect_btn"]
    sleep    5
    Selenium2Library.Click Element    xpath=//tr[5]//td[3]//select[1]//option[2]
    sleep    1
    Selenium2Library.Click Element    xpath=//*[@id="north_week_to_date_vordefect_btn"]
    sleep    5
    Selenium2Library.Click Element    //*[@id="southWeekToDateVorDefectBtn"]
    sleep    5
    Selenium2Library.Click Element    xpath=//tr[6]//td[3]//select[1]//option[2]
    sleep    1
    Selenium2Library.Click Element    //*[@id="southWeekToDateVorDefectBtn"]
    sleep    5
    Execute Javascript    window.scroll(0,500)
    sleep    2
    Selenium2Library.Click Element    //*[@id="scotlandWeekToDateVorDefectBtn"]
    sleep    5
    Selenium2Library.Click Element    xpath=//tr[7]//td[3]//select[1]//option[2]
    sleep    1
    Selenium2Library.Click Element    //*[@id="scotlandWeekToDateVorDefectBtn"]
    sleep    5
    Selenium2Library.Click Element    //*[@id="headofficeWeekToDateVorDefectBtn"]
    sleep    5
    Selenium2Library.Click Element    xpath=//tr[8]//td[3]//select[1]//option[2]
    sleep    1
    Selenium2Library.Click Element    //*[@id="headofficeWeekToDateVorDefectBtn"]
    sleep    5
    sleep    5
    Selenium2Library.Click Element    xpath=//tr[9]//td[3]//select[1]//option[2]
    sleep    1
    Selenium2Library.Click Element    //*[@id="allWeekToDateActivityBtn"]
    sleep    5
    Selenium2Library.Click Element    //*[@id="P11DBenefitsInKindBtn"]
    sleep    5

Send Message
    Go to    ${Messagespage}
    Sleep    5
    Execute Javascript    window.scroll(0,0);
    sleep    1
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Send Message to user";document.body.appendChild(el);
    sleep    1
    Selenium2Library.Click Element    ${NoTemplateDD}
    sleep    1
    Selenium2Library.Click Element    ${SelectTemplate}
    sleep    2
    Selenium2Library.Click Element    ${UserSearchTB}
    Selenium2Library.input text    ${UserSearchTB}    Admin
    sleep    1
    Selenium2Library.Click Element    ${UsersToggle}
    sleep    1
    Selenium2Library.Click Element    ${UsersCB}
    sleep    1
    ${User Count 1}    Selenium2Library.Get text    ${UsersToggle}
    log    ${User Count 1}
    Should Contain Any    ${User Count 1}    1
    ${User Name}    Selenium2Library.Get text    ${UsersDetails}
    log    ${User Name}
    Should Contain Any    ${User Name}    Admin
    sleep    2
    Selenium2Library.Click Element    ${SendButton}
    sleep    2
    Selenium2Library.Click Element    ${SendYesBTN}

Create New Group
    Go to    ${Messagespage}
    Sleep    5
    Selenium2Library.Click Element    ${ManageGrouptab}
    Sleep    3
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Create New group";document.body.appendChild(el);
    Selenium2Library.Input Text    ${GroupNameTB}    Test Group
    sleep    2
    Selenium2Library.Click Element    ${SelectrecipientsTB}
    sleep    1
    Selenium2Library.Input Text    ${SelectrecipientsTB}    admin
    sleep    1
    Selenium2Library.Click Element    ${MGUsersCB}
    sleep    1
    Selenium2Library.Click Element    ${MGUsersValCB}
    Selenium2Library.Click Element    ${MGAddBTN}
    Sleep    3
    Page should contain    The new group has been added.
    Sleep    3

Edit Created Group
    Go to    ${Messagespage}
    Sleep    5
    Selenium2Library.Click Element    ${ManageGrouptab}
    Sleep    3
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Edit Created Group...!";document.body.appendChild(el);
    sleep    1
    Selenium2Library.Click Element    ${SelectGroup}
    Sleep    2
    Selenium2Library.Input Text    ${GroupNameTB}    Test Group 1
    Selenium2Library.Click Element    ${MGUpdateBTN}
    Sleep    3
    Page should contain    The group has been updated.
    Sleep    3

Delete Created Group
    Go to    ${Messagespage}
    Sleep    5
    Selenium2Library.Click Element    ${ManageGrouptab}
    Sleep    3
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Delete Created Group...!";document.body.appendChild(el);
    sleep    1
    Selenium2Library.Click Element    ${SelectEditGroup}
    Sleep    2
    Selenium2Library.Click Element    ${MGDeleteBTN}
    Sleep    2
    Selenium2Library.Click Element    ${ConfirmSendBTN}
    Sleep    3
    Page Should Contain    The group has been deleted.
    Sleep    3

Create New Workshop User
    Go to    ${Workshops}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify Create new workshop user functionality...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${WSaddNewworkshopUser}
    Sleep    3
    Selenium2Library.Input Text    ${WSFirstName}    Sandeep
    Selenium2Library.Input Text    ${WSLastName}    Patel
    sleep    1
    Selenium2Library.Click Element    ${WSAddNewCompany}
    sleep    1
    Selenium2Library.Click Element    ${WSAddcompanyName}
    ${NewCompany}    Generate Random String    4    AQWERTYUIOPASDFGHJKLZXCVBNM
    log    ${NewCompany}
    Set Variable    ${NewCompany}
    Set Global Variable    ${NewCompany}
    sleep    1
    Selenium2Library.Input Text    ${WSAddcompanyName}    1${NewCompany}
    sleep    1
    Selenium2Library.Click Element    ${WSaddCompanySaveBTN}
    sleep    2
    Selenium2Library.Click Element    ${WSCompanyDD}
    Selenium2Library.Click Element    xpath=(.//div[contains(., '1${NewCompany}')])[last()]
    sleep    1
    comment    Change mail id number
    ${Number}    Generate Random String    4    1234567890
    log    ${Number}
    Selenium2Library.Input Text    ${WSEmailTB}    aecortest2019+${Number}@gmail.com
    Selenium2Library.Input Text    ${WSMobileTB}    9662654910
    Selenium2Library.Input Text    ${WSLandlineTB}    9925838205
    Selenium2Library.Input Text    ${WSAddress1TB}    Menpura
    Selenium2Library.Input Text    ${WSAddress2TB}    Dabhoi
    Selenium2Library.Input Text    ${WSTownTB}    Vadodara
    Selenium2Library.Input Text    ${WSpostcodeTB}    391220
    Selenium2Library.Click Element    ${WSAddUserBTN}
    Sleep    3
    Page Should Contain    Data has been saved successfully.

Verify Account for Workshop User
    Open Browser    https://accounts.google.com/signin/v2/identifier?continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&service=mail&sacu=1&rip=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin
    Maximize Browser Window
    Selenium2Library.Input Text    //*[@id="identifierId"]    aecortest2019@gmail.com
    Selenium2Library.Click Element    //*[@id="identifierNext"]/content
    Sleep    5
    Selenium2Library.Input Text    //*[@id="password"]/div[1]/div/div[1]/input    Aecor1234
    Selenium2Library.Click Element    //*[@id="passwordNext"]/content/span
    sleep    10
    Selenium2Library.Input Text    //*[@id="aso_search_form_anchor"]/div/input    fleetmastr - set your account password
    Press Key    //*[@id="aso_search_form_anchor"]/div/input    \\13
    Sleep    10
    Selenium2Library.Click Element    xpath=/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div[2]/div[4]/div[1]/div/table/tbody/tr[1]/td[6]/div/div/div[2]/span/span
    sleep    3
    Focus    xpath=.//a[contains(normalize-space(.), 'Set password')]
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Set password')]
    Sleep    5
    Select Window    NEW
    Selenium2Library.Input Text    //*[@id="password"]    srp9662654910
    Selenium2Library.Input Text    //*[@id="login-form"]/div[4]/div/input    srp9662654910
    Selenium2Library.Click Element    //*[@id="reset-submit-btn"]
    Sleep    5
    Page Should Contain    Your password has been set.

Filter by “Checked today” on Vehicle page
    Go To    ${Vehicles}
    Sleep    3
    Selenium2Library.Click Element    ${CheckedTodayBTN}
    Sleep    2
    Selenium2Library.Page Should Contain    Checked today
    Sleep    3

Filter by “Not checked today” on Vehicle page
    Go to    ${Vehicles}
    Sleep    3
    Selenium2Library.Click Element    ${NotCheckedTodayBTN}
    Sleep    2
    Selenium2Library.Page Should Contain    Not checked today
    Sleep    3

Filter by “All” on Vehicle page
    Go to    ${Vehicles}
    Sleep    2
    Selenium2Library.Click Element    ${AllBTN}
    Sleep    2
    Selenium2Library.Page Should Contain    All
    Sleep    3

Search results using the “All manufacturers” value on Vehicle page
    Go To    ${Vehicles}
    Sleep    3
    Selenium2Library.Click Element    ${AdvancedSearchTB}
    Sleep    3
    Selenium2Library.Click Element    ${VSManufacturerTB}
    Sleep    2
    Selenium2Library.Click Element    ${VSManufacturerTBVal}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${VSSearchBTN}    10s
    Selenium2Library.Click Element    ${VSSearchBTN}
    Sleep    3
    Selenium2Library.Click Element    ${VSClearBTN}
    Sleep    3

Search results using the “All models” value on Vehicle page
    Sleep    2
    Go To    ${Vehicles}
    Sleep    2
    Selenium2Library.Click Element    ${AdvancedSearchTB}
    Sleep    1
    Selenium2Library.Click Element    ${VSModelBTN}
    Sleep    2
    Selenium2Library.Click Element    ${VSManufacturerTBVal}
    Selenium2Library.Element Should Be Visible    ${VSSearchBTN}    10s
    Selenium2Library.Click Element    ${VSSearchBTN}
    Sleep    3
    Selenium2Library.Click Element    ${VSClearBTN}
    Sleep    3

Search results using the “All types” value on Vehicle page
    Go to    ${Vehicles}
    Sleep    3
    Selenium2Library.Click Element    ${AdvancedSearchTB}
    Sleep    2
    Selenium2Library.Click Element    ${VSTypeDD}
    Sleep    2
    Selenium2Library.Click Element    ${VSTypeDDVal}
    Selenium2Library.Element Should Be Visible    ${VSSearchBTN}
    Selenium2Library.Click Element    ${VSSearchBTN}
    Sleep    3
    Selenium2Library.Click Element    ${VSClearBTN}
    Sleep    3

Search results using the “Vehicle status” value on Vehicle page
    Go to    ${Vehicles}
    Sleep    3
    Selenium2Library.Click Element    ${VSQuickSearh}
    Sleep    3
    Selenium2Library.Click Element    ${VSVehicleStatusDD}
    Sleep    2
    Selenium2Library.Click Element    ${VSVehicleStatusDDval}
    Selenium2Library.Element Should Be Visible    ${VSSearhBTN1}
    Selenium2Library.Click Element    ${VSSearhBTN1}
    Sleep    3
    Selenium2Library.Click Element    ${VSClearBTN1}
    Sleep    3

Search results using the “All regions” value on Vehicle page
    Go to    ${Vehicles}
    Sleep    3
    Selenium2Library.Click Element    ${AdvancedSearchTB}
    Sleep    2
    Selenium2Library.Click Element    ${VSRegionDD}
    Sleep    2
    Selenium2Library.Click Element    ${VSRegionDDVal}
    Selenium2Library.Element Should Be Visible    ${VSSearchBTN}
    Selenium2Library.Click Element    ${VSSearchBTN}
    Sleep    3
    Selenium2Library.Click Element    ${VSClearBTN}
    Sleep    3

Clear a search on Vehicle page
    Selenium2Library.Go To    ${Vehicles}
    Sleep    3
    Comment    Change registration number same as in creation    Create New Vehicle on Vehicle search page
    Selenium2Library.Click Element    ${VSVehicleStatusDD}
    Sleep    2
    Selenium2Library.Click Element    ${VSVehicleStatusDDval1}
    sleep    4
    Selenium2Library.Click Element    ${VSSearhBTN1}
    Sleep    2
    Selenium2Library.Page Should Contain    No information available
    Sleep    2
    Selenium2Library.Click Element    ${VSClearBTN1}
    Sleep    2

Add a document in the “Manage documents” section
    Selenium2Library.Go To    ${Vehicles}
    Sleep    3
    Selenium2Library.Click Element    ${VSRegistrationTB}
    Sleep    2
    Selenium2Library.Click Element    ${VSRegistrationTBSearchbox}
    Selenium2Library.Input Text    ${VSRegistrationTBSearchbox}    ${RegNo}
    Press Key    ${VSRegistrationTBSearchbox}    \\13
    Sleep    2
    Selenium2Library.Click Element    ${VSSearhBTN1}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${DetailsIcon}
    Selenium2Library.Click Element    ${DetailsIcon}
    Sleep    2
    Selenium2Library.Click Element    ${DocumentSection}
    Sleep    2
    Selenium2Library.Click Element    ${AddNewDocumentBTN}
    Sleep    3
    Selenium2Library.Click Element    xpath=//*[@id="updateVehicleDocument"]/div[1]/div/div
    Sleep    3
    Send    {TAB}
    Sleep    3
    Send    {ENTER}
    Sleep    3
    Send    C:\\Users\\my\\Desktop\\GIF.gif
    Sleep    3
    Send    {ENTER}
    Sleep    10
    Selenium2Library.Wait Until Page Contains Element    ${VehicleDocUploadButton}
    Selenium2Library.Click Element    ${VehicleDocUploadButton}
    Sleep    15
    Selenium2Library.Wait Until Page Contains Element    ${VehicleDocCloseIcon}
    Selenium2Library.Click Element    ${VehicleDocCloseIcon}
    Sleep    2

Change the columns selected on the page via the column management pop-up on Vehicle page
    Selenium2Library.Go To    ${Vehicles}
    Sleep    5
    Selenium2Library.Click Element    ${ResertColumnDD}
    Sleep    2
    Selenium2Library.Click Element    ${VSManufacturerCB}
    Selenium2Library.Click Element    ${VSmodelCB}
    Selenium2Library.Element Should Be Visible    ${VSStatusCB}
    Selenium2Library.Click Element    ${VSStatusCB}
    Selenium2Library.Element Should Be Visible    ${VSCheckCB}
    Selenium2Library.Click Element    ${VSCheckCB}
    Selenium2Library.Element Should Be Visible    ${VSCheckedByCB}
    Selenium2Library.Click Element    ${VSCheckedByCB}
    Selenium2Library.Element Should Be Visible    ${VSCreatedByCB}
    Selenium2Library.Click Element    ${VSCreatedByCB}
    Selenium2Library.Click Element    ${ColumnMGTCloseBTN}
    Sleep    2

Reset the columns on Vehicle page
    Selenium2Library.Go To    ${Vehicles}
    Sleep    3
    Selenium2Library.Click Element    ${ResetColumnBTN}
    Sleep    2
    Selenium2Library.Click Element    ${ResetColumnYesBTN}
    Sleep    2
    Page Should Contain    Model
    Sleep    2

Download/export a report on Vehicle page
    Selenium2Library.Go To    ${Vehicles}
    Sleep    5
    Selenium2Library.Click Element    ${DownlloadPDFIcon}
    Sleep    5

Clear a search on Vehicle Profile page
    Go to    ${VehicleProfile}
    Sleep    3
    Selenium2Library.Element Should Be Visible    ${SearchProfileTB}
    Sleep    2
    Selenium2Library.Click Element    ${SearchProfileTB}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${SerchbyvehicleprofiletypeTB}
    Selenium2Library.Click Element    ${SerchbyvehicleprofiletypeTB}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${SerchvehicleprofileSearchBTN}
    Selenium2Library.Click Element    ${SerchvehicleprofileSearchBTN}
    Sleep    1
    Selenium2Library.Input Text    ${SerchvehicleprofileSearchBTN}    ${Profile}
    sleep    2
    Press Key    ${SerchvehicleprofileSearchBTN}    \\13
    Sleep    2
    Selenium2Library.Click Element    ${SelectSearch}
    sleep    2
    Sleep    3
    Page Should contain    ${Profile}
    sleep    5
    Selenium2Library.Click Element    ${EditVehicleProfileBTN}
    Sleep    3

Access the vehicle profile page
    Go To    ${VehicleProfile}
    Sleep    3
    Selenium2Library.Element Should Be Visible    ${ProfilePageHeader}
    Selenium2Library.Page Should Contain Element    ${ProfilePageHeader}
    Sleep    1
    Selenium2Library.Element Should Be Visible    ${VehicleProfileText}
    Selenium2Library.Page Should Contain Element    ${VehicleProfileText}
    Sleep    2
    Selenium2Library.Element Should Be Visible    //div[contains(text(),'Vehicle Profiles')]
    Selenium2Library.Page Should Contain Element    //div[contains(text(),'Vehicle Profiles')]
    Sleep    2
    Selenium2Library.Element Should Be Visible    //div[@class='portlet-body work_table']
    Selenium2Library.Page Should Contain Element    //div[@class='portlet-body work_table']
    Sleep    2
    Selenium2Library.Element Should Be Visible    //div[@id='jqGridPager']
    Selenium2Library.Page Should Contain Element    //div[@id='jqGridPager']

Change the columns selected on the page via the column management pop-up on Vehicle Profile page
    Go to    ${VehicleProfile}
    Sleep    5
    Selenium2Library.Element Should Be Visible    ${ResertColumnDD}
    Sleep    3
    Selenium2Library.Click Element    ${ResertColumnDD}
    Sleep    3
    Selenium2Library.Element Should Be Visible    ${ColumnMgtModel}
    Sleep    1
    Selenium2Library.Click Element    ${FuelTypeCB}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${EndineTypeCB}
    Selenium2Library.Click Element    ${EndineTypeCB}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${OilGradeTB}
    Selenium2Library.Click Element    ${OilGradeTB}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${ProfileStatusCB}
    Selenium2Library.Click Element    ${ProfileStatusCB}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${GrossVehicleWeightTB}
    Selenium2Library.Click Element    ${GrossVehicleWeightTB}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${BodyBuilderCB}
    Selenium2Library.Click Element    ${BodyBuilderCB}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${Co2CB}
    Selenium2Library.Click Element    ${Co2CB}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${ModelSubmitBTN}
    Selenium2Library.Click Element    ${ModelSubmitBTN}
    Sleep    2
    Page Should Contain    Gross Vehicle Weight
    Sleep    2

Reset the columns on Vehicle Profile page
    Go to    ${VehicleProfile}
    Sleep    5
    Selenium2Library.Click Element    ${ResetColumnBTN}
    Sleep    2
    Selenium2Library.Click Element    ${ResetColumnYesBTN}
    Sleep    2
    Page Should Contain    Type of Engine

Download/export a report on Vehicle Profile page
    Go to    ${VehicleProfile}
    Sleep    5
    Selenium2Library.Click Element    ${DownloadProfileIcon}
    Sleep    3
    Page Should Contain    Vehicle Profiles
    sleep    1

Create Standard Template
    Go to    ${Messagespage}
    Sleep    5
    Selenium2Library.Click Element    ${ManageTemplates}
    Sleep    3
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Create Standard Template...!";document.body.appendChild(el);
    sleep    1
    Selenium2Library.Input Text    ${Templatename}    1 Test Standard
    Selenium2Library.Click Element    ${MessageTB}
    Press Key    ${MessageTB}    \\13
    sleep    2
    send    Test Message
    sleep    2
    Selenium2Library.Click Element    ${MTAddBTN}
    sleep    4
    Go to    ${Messagespage}
    Sleep    5
    Execute Javascript    window.scroll(0,0);
    sleep    1
    Selenium2Library.Click Element    ${ManageTemplates}
    Sleep    3
    Page Should Contain    1 Test Standard
    Sleep    3

Edit Standard Template
    Go To    ${Messagespage}
    Sleep    5
    Selenium2Library.Click Element    ${ManageTemplates}
    Sleep    3
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Edit Standard Template...!";document.body.appendChild(el);
    sleep    1
    Selenium2Library.Click Element    ${MTTemplate}
    Sleep    3
    Selenium2Library.Input Text    ${Templatename}    1 Test Standard 1
    Selenium2Library.Click Element    ${MessageTB}
    Press Key    ${MessageTB}    \\13
    sleep    2
    send    Test Message 1
    sleep    2
    Selenium2Library.Click Element    ${MTUpdateBTN}
    Comment    Wait Until Page Does Not Contain    The template has been updated.
    Sleep    3

Delete Standard Template
    Go To    ${Messagespage}
    Sleep    5
    Execute Javascript    window.scroll(0,0);
    sleep    1
    Selenium2Library.Click Element    ${ManageTemplates}
    Sleep    3
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Delete Standard Template...!";document.body.appendChild(el);
    sleep    1
    Selenium2Library.Click Element    ${MTTemplate}
    Sleep    3
    Selenium2Library.Click Element    ${MTDeleteBTN}
    Sleep    2
    Selenium2Library.Click Element    ${ConfirmSendBTN}
    Comment    Wait Until Page Does Not Contain    The template has been deleted.
    Sleep    3

Create MCQ Template
    Go To    ${Messagespage}
    Sleep    5
    Execute Javascript    window.scroll(0,0);
    sleep    1
    Selenium2Library.Click Element    ${ManageTemplates}
    Sleep    3
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Create MCQ Template...!";document.body.appendChild(el);
    sleep    1
    Selenium2Library.Input Text    ${Templatename}    1 Test MCQ
    sleep    1
    Selenium2Library.Click Element    ${TemplateTypeDD}
    Selenium2Library.Click Element    ${MCQtemplateType}
    Selenium2Library.Input Text    ${MTMessageTB}    Test Message
    Selenium2Library.Click Element    ${MTQuestion1TB}
    Press Key    ${MTQuestion1TB}    \\13
    sleep    2
    send    MCQ 1
    sleep    2
    Selenium2Library.Click Element    ${MTQue1CB}
    sleep    2
    Selenium2Library.Input Text    ${MTQue1Val}    Answer 1
    Selenium2Library.Input Text    ${MTQue2Val}    Answer 2
    sleep    2
    Selenium2Library.Click Element    ${MTAddnextQueBTn}
    Sleep    1
    Selenium2Library.Click Element    ${MTQuestion2TB}
    Press Key    ${MTQuestion2TB}    \\13
    sleep    2
    send    MCQ 2
    sleep    2
    Selenium2Library.Input Text    ${MTQue3Val}    Answer 3
    Selenium2Library.Input Text    ${MTQue4Val}    Answer 4
    Comment    Selenium2Library.Click Element    xpath=((.//button[contains(normalize-space(.), 'Clear filter')])[last()]/following::input[@type='checkbox'])[1]
    Comment    Selenium2Library.Click Element    //*[@id="template-form"]/div[1]/div[10]/div/div/div/label[2]/div/div/span
    Selenium2Library.Click Element    ${MTMCQAddBTN}
    Sleep    3
    Go to    ${Messagespage}
    Sleep    5
    Execute Javascript    window.scroll(0,0);
    sleep    1
    Selenium2Library.Click Element    ${ManageTemplates}
    Sleep    3
    Page Should Contain    1 Test MCQ
    Sleep    3

Edit MCQ Template
    Go To    ${Messagespage}
    Sleep    5
    Selenium2Library.Click Element    ${ManageTemplates}
    Sleep    3
    Selenium2Library.Click Element    ${MTTemplate}
    Sleep    3
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Edit MCQ Template...!";document.body.appendChild(el);
    sleep    1
    Selenium2Library.Input Text    ${Templatename}    1 Test MCQ 1
    Selenium2Library.Input Text    ${MTMessageTB}    Test Message 1
    Selenium2Library.Click Element    ${RemoveQuestionLink}
    Sleep    2
    Selenium2Library.Click Element    ${AddanotheransLink}
    Selenium2Library.Input Text    ${MTQue5Val}    Answer 3
    Selenium2Library.Click Element    ${MTQue5CB}
    Sleep    2
    Selenium2Library.Click Element    ${MTUpdateBTN}
    Comment    Wait Until Page Does Not Contain    The template has been updated.
    Sleep    3
    Go to    ${Messagespage}
    Sleep    5
    Execute Javascript    window.scroll(0,0);
    sleep    1
    Selenium2Library.Click Element    ${ManageTemplates}
    Sleep    3
    Page Should Contain    1 Test MCQ 1
    Sleep    3

Delete MCQ Template
    Go To    ${Messagespage}
    Sleep    5
    Selenium2Library.Click Element    ${ManageTemplates}
    Sleep    3
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Delete MCQ Template...!";document.body.appendChild(el);
    sleep    1
    Selenium2Library.Click Element    ${MTTemplate}
    Sleep    2
    Selenium2Library.Click Element    ${MTDeleteBTN}
    Sleep    1
    Selenium2Library.Click Element    ${ConfirmSendBTN}
    Sleep    3
    Go to    ${Messagespage}
    Sleep    5
    Execute Javascript    window.scroll(0,0);
    sleep    1
    Selenium2Library.Click Element    ${ManageTemplates}
    Sleep    3
    Page Should not Contain    1 Test MCQ 1
    Sleep    3

Create Q&A Template
    Go To    ${Messagespage}
    Sleep    5
    Execute Javascript    window.scroll(0,0);
    sleep    1
    Selenium2Library.Click Element    ${ManageTemplates}
    sleep    2
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Create Q&A Template...!";document.body.appendChild(el);
    sleep    1
    Selenium2Library.Input Text    ${Templatename}    1 Test Q&A
    Selenium2Library.Click Element    ${TemplateTypeDD}
    Selenium2Library.Click Element    ${MTQATemplate}
    sleep    1
    Selenium2Library.Input Text    ${MTMessageTB}    1 Test Message Q&A
    Selenium2Library.Click Element    ${MTQA1TB}
    Press Key    ${MTQA1TB}    \\13
    sleep    2
    send    Test Q&A 1
    sleep    2
    Selenium2Library.Click Element    ${MTQAAddnextque}
    sleep    2
    Selenium2Library.Click Element    ${MTQA2TB}
    sleep    2
    Press Key    ${MTQA2TB}    \\13
    sleep    2
    send    Test Q&A 2
    sleep    2
    Comment    Selenium2Library.Click Element    xpath=((.//button[contains(normalize-space(.), 'Clear filter')])[last()]/following::input[@type='checkbox'])[1]
    Comment    Selenium2Library.Click Element    //*[@id="template-form"]/div[1]/div[10]/div/div/div/label[2]/div/div/span
    Sleep    1
    Selenium2Library.Click Element    ${MTMCQAddBTN}
    Comment    Wait Until Page Does Not Contain    The new template has been added.
    Sleep    5
    Go to    ${Messagespage}
    Sleep    5
    Execute Javascript    window.scroll(0,0);
    sleep    1
    Selenium2Library.Click Element    ${ManageTemplates}
    Sleep    3
    Page Should Contain    1 Test Q&A
    Sleep    3

Edit Q&A Template
    Go To    ${Messagespage}
    Sleep    5
    Selenium2Library.Click Element    ${ManageTemplates}
    sleep    3
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Edit Q&A Template...!";document.body.appendChild(el);
    sleep    1
    Selenium2Library.Click Element    ${MTTemplate}
    Sleep    3
    Selenium2Library.Input Text    ${Templatename}    1 Test Q&A 1
    Selenium2Library.Input Text    ${MTMessageTB}    Test Message Q&A 1
    sleep    2
    Selenium2Library.Click Element    ${MTQA1TB}
    sleep    1
    Press Key    ${MTQA1TB}    \\13
    sleep    1
    send    Test Q&A
    sleep    1
    Selenium2Library.Click Element    ${RemoveQuestionLink}
    Comment    Selenium2Library.Click Element    xpath=(.//span[contains(., '(6)')]/following::input[@type='checkbox'])[29]
    sleep    1
    Comment    Selenium2Library.Click Element    //*[@id="template-form"]/div[1]/div[10]/div/div/div/label[1]/div/div/span
    Selenium2Library.Click Element    ${MTUpdateBTN}
    Comment    Wait Until Page Does Not Contain    The template has been updated.
    Sleep    3
    Go to    ${Messagespage}
    Sleep    5
    Execute Javascript    window.scroll(0,0);
    sleep    1
    Selenium2Library.Click Element    ${ManageTemplates}
    Sleep    3
    Page Should Contain    1 Test Q&A 1
    Sleep    3

Delete Q&A Template
    Go To    ${Messagespage}
    Sleep    5
    Selenium2Library.Click Element    ${ManageTemplates}
    Sleep    3
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Delete Q&A Template...!";document.body.appendChild(el);
    sleep    1
    Selenium2Library.Click Element    ${MTTemplate}
    Sleep    2
    Selenium2Library.Click Element    ${MTDeleteBTN}
    Sleep    1
    Selenium2Library.Click Element    ${ConfirmSendBTN}
    Comment    Wait Until Page Does Not Contain    The template has been deleted.
    Sleep    3
    Go to    ${Messagespage}
    Sleep    5
    Execute Javascript    window.scroll(0,0);
    sleep    1
    Selenium2Library.Click Element    ${ManageTemplates}
    Sleep    3
    Page Should not Contain    1 Test Q&A 1
    Sleep    3

Verify clicks in Vehicle Fleet Statistics
    Comment    Go to    ${FleetmastrQA}
    Comment    Sleep    5
    ${RoadworthyVehiclesCount}    Selenium2Library.Get Text    ${CountRoadworthyVehicles}
    log    ${RoadworthyVehiclesCount}
    Sleep    2
    Selenium2Library.Click Element    ${RoadworthyVehicles}
    Sleep    5
    Page should contain    Vehicle Search
    Sleep    2
    Execute JavaScript    window.scrollTo(0,1000)
    Sleep    2
    ${TotalVehicls}    Selenium2Library.Get Text    ${Countpagination}
    log    ${TotalVehicls}
    Should Contain Any    ${TotalVehicls}    ${RoadworthyVehiclesCount}
    Go to    ${FleetmastrQA}
    Sleep    5
    ${RoadworthyOtherCount}    Selenium2Library.Get Text    ${CountRoadworthy_other}
    log    ${RoadworthyOtherCount}
    Sleep    2
    Selenium2Library.Click Element    ${Vehicles_other}
    Sleep    5
    Page should contain    Vehicle Search
    Sleep    2
    Execute JavaScript    window.scrollTo(0,1000)
    Sleep    2
    ${RoadworthyOtherTotalVehicls}    Selenium2Library.Get Text    ${Countpagination}
    log    ${RoadworthyOtherTotalVehicls}
    Should Contain Any    ${RoadworthyOtherTotalVehicls}    ${RoadworthyOtherCount}
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    ${RoadworthyOfroadCount}    Selenium2Library.Get Text    ${CountVehicleoffroad}
    log    ${RoadworthyOfroadCount}
    Sleep    2
    Selenium2Library.Click Element    ${VehiclesOffRoad}
    Sleep    5
    Page should contain    Vehicle Search
    Sleep    3
    Execute JavaScript    window.scrollTo(0,1000)
    Sleep    2
    ${RoadworthyOffroadTotalVehicls}    Selenium2Library.Get Text    ${Countpagination}
    log    ${RoadworthyOffroadTotalVehicls}
    Should Contain Any    ${RoadworthyOffroadTotalVehicls}    ${RoadworthyOfroadCount}

Verify clicks in Today's Vehicle Checks
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${Checkedtoday}
    Sleep    5
    Page should contain    Checked today
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${Notcheckedtoday}
    Sleep    5
    Page should contain    Not checked today
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${Roadworthy}
    Sleep    5
    Page should contain    Roadworthy
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${Safetooperate}
    Sleep    5
    Page should contain    Safe to operate
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${Unsafetooperate}
    Sleep    5
    Page should contain    Unsafe to operate
    Sleep    3

Filter graph for Vehicles Off Road
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${VORAllRegionDD}
    Selenium2Library.Click Element    ${SelectOption}
    Sleep    2
    Page should contain    Head Office
    Sleep    3

Filter Upcoming Inspections
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${UIAllRegionDD}
    Selenium2Library.Click Element    ${SelectOption}
    Sleep    2
    Page should contain    Head Office
    Sleep    3

Verify clicks in Upcoming Inspections
    Go to    ${FleetmastrQA}
    Sleep    5
    Execute Javascript    window.scrollTo(0,1000)
    ${DPAnnualserviceCount}    Selenium2Library.Get Text    //*[@id="dashboard-page"]/section[1]/div/section/div/div/div[1]/div/div[2]/div/div[2]/a/div/h4
    log    ${DPAnnualserviceCount}
    sleep    2
    Selenium2Library.Click Element    ${DPAnnualservice}
    Sleep    5
    Page should contain    Annual service
    Page should contain    Date passed
    Sleep    2
    Execute Javascript    window.scrollTo(0,1000)
    ${CountAnnualService}    Selenium2Library.Get Text    ${Countpagination}
    log    ${CountAnnualService}
    Should Contain Any    ${CountAnnualService}    ${DPAnnualserviceCount}
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${DPNextService}
    Sleep    5
    Page should contain    Service
    Page should contain    Date passed
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${DPTachoService}
    Sleep    5
    Page should contain    Tacho calibration
    Page should contain    Date passed
    Sleep    3
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${NXT7AnnualSerice}
    Sleep    5
    Page should contain    Annual service
    Page should contain    Next 7 days
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${NXT7NextService}
    Sleep    5
    Page should contain    Service
    Page should contain    Next 7 days
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${NXT7TachoService}
    Sleep    5
    Page should contain    Tacho calibration
    Page should contain    Next 7 days
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${NXT8AnnualSerice}
    Sleep    5
    Page should contain    Annual service
    Page should contain    8-14 days time
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${NXT8NextService}
    Sleep    5
    Page should contain    Service
    Page should contain    8-14 days time
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${NXT8TachoService}
    Sleep    5
    Page should contain    Tacho calibration
    Page should contain    8-14 days time
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${NXT15AnnualSerice}
    Sleep    5
    Page should contain    Annual service
    Page should contain    15-30 days time
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${NXT15NextService}
    Sleep    5
    Page should contain    Service
    Page should contain    15-30 days time
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${NXT15TachoService}
    Sleep    5
    Page should contain    Tacho calibration
    Page should contain    15-30 days time
    Sleep    3

Filter Upcoming Expires
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${UEAllRegionDD}
    Selenium2Library.Click Element    ${SelectOption}
    Sleep    2
    Page should contain    Head Office
    Sleep    3

Verify clicks in Upcoming Expires
    Comment    Go to    https://uat-skanska.fleetmastr.com/
    Comment    Sleep    5
    Selenium2Library.Click Element    ${DPMaintenancService}
    Sleep    5
    Page should contain    Maintenance expiry
    Page should contain    Date passed
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${DPMOTService}
    Sleep    5
    Page should contain    MOT
    Page should contain    Date passed
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${DPTaxService}
    Sleep    5
    Page should contain    Tax
    Page should contain    Date passed
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${NXT7MaintenancService}
    Sleep    5
    Page should contain    Maintenance
    Page should contain    Next 7 days
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${NXT7MOTService}
    Sleep    5
    Page should contain    MOT
    Page should contain    Next 7 days
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${NXT7TaxService}
    Sleep    5
    Page should contain    Tax
    Page should contain    Next 7 days
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${NXT8MaintenancService}
    Sleep    5
    Page should contain    Maintenance
    Page should contain    8-14 days time
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${NXT8MOTService}
    Sleep    5
    Page should contain    MOT
    Page should contain    8-14 days time
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${NXT8TaxService}
    Sleep    5
    Page should contain    Tax
    Page should contain    8-14 days time
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${NXT15MaintenancService}
    Sleep    5
    Page should contain    Maintenance
    Page should contain    15-30 days time
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${NXT15MOTService}
    Sleep    5
    Page should contain    MOT
    Page should contain    15-30 days time
    Sleep    2
    Go to    ${FleetmastrQA}
    Sleep    5
    Selenium2Library.Click Element    ${NXT15TaxService}
    Sleep    5
    Page should contain    Tax
    Page should contain    15-30 days time
    Sleep    3

Export planner for a selected date
    Go to    http://uat-firstmile.fleetmastr.com/planner
    Sleep    5
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Export planner')]
    Sleep    5

Search results using the “All regions” value on Vehicle planning page
    Go to    ${FleetPlanningpage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verifyig All Regions filter functionality...!";document.body.appendChild(el);
    sleep    2
    Selenium2Library.Click Element    ${FPallregionDD}
    sleep    2
    Send    {ENTER}
    sleep    2
    Page Should Contain    Vehicle List
    Sleep    3
    ${Region}    Selenium2Library.Get Text    ${FPRegionname}
    Should Contain Any    ${Region}    A428
    Sleep    3
    Selenium2Library.Click Element    ${FPclearBTN}
    sleep    1
    ${all region}    Selenium2Library.Get Text    ${FPRegionname}
    Should Be Equal As Strings    ${all region}    All Regions
    Sleep    3

Search results using the “Enter vehicle registration” value on Vehicle planning page
    Go to    ${FleetPlanningpage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verifying Vehicle Registration filter Functionality...!";document.body.appendChild(el);
    sleep    2
    Selenium2Library.Click Element    ${FPvehicleRegDD}
    Comment    Change registration number as in creation
    Comment    Selenium2Library.Input Text    //*[@id="s2id_autogen4_search"]    ${RegNo}
    sleep    1
    send    ${RegNo}
    sleep    1
    AutoItLibrary.Send    {ENTER}
    Sleep    2
    Comment    Selenium2Library.Click Element    xpath=.//button[contains(., '')][@type='submit']
    Comment    Sleep    3
    Page Should Contain    ${RegNo}
    sleep    1
    Selenium2Library.Click Element    ${FPclearBTN}
    Sleep    3

Search results using the “Select search” value on Vehicle planning page
    Go to    ${FleetPlanningpage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verifying Select Search filter Functionality...!";document.body.appendChild(el);
    sleep    2
    Selenium2Library.Click Element    ${FPSelectsearchDD}
    Selenium2Library.Click Element    ${FPSelectVal}
    Sleep    2
    Selenium2Library.Click Element    ${FPSeletTimeperiodTB}
    Selenium2Library.Click Element    ${FPSeletTimeperiodTBVal}
    Sleep    2
    Selenium2Library.Click Element    ${FPsearchicon}
    Sleep    3
    Selenium2Library.Click Element    ${FPClearBTN}
    Sleep    3

Download/export a report on Vehicle planning page
    Go to    ${FleetPlanningpage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verifying Export \ Functionality...!";document.body.appendChild(el);
    sleep    2
    Selenium2Library.Click Element    ${DownloadProfileIcon}
    Sleep    5
    Page Should Contain    Vehicle List

Add a vehicle on Fleet planning page
    Go to    ${FleetPlanningpage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Adding New vehicle from Fleet Planning...!";document.body.appendChild(el);
    sleep    2
    Selenium2Library.Click Element    ${FPaddnewvehicle}
    Sleep    2
    Sleep    2
    Selenium2Library.Page Should Contain    Add
    Comment    Change registration number
    ${RegNo}    Generate Random String    5    ${RandomCombinations}
    log    ${RegNo}
    Set Global Variable    ${RegNo}
    Selenium2Library.Input Text    ${RegistrationTB}    ${RegNo}
    Selenium2Library.Click Element    ${TypeDD}
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${TypeDDSearchbox}
    Selenium2Library.Click Element    ${TypeDDSearchbox}
    Selenium2Library.Input Text    ${TypeDDSearchbox}    Aecor
    Press Key    ${TypeDDSearchbox}    \\13
    Sleep    4
    Selenium2Library.Click Element    ${VehicleStatusDD}
    Selenium2Library.Click Element    ${VehicleStatusDDsearchbox}
    Selenium2Library.Input Text    ${VehicleStatusDDsearchbox}    Roadworthy
    Press Key    ${VehicleStatusDDsearchbox}    \\13
    Sleep    3
    Selenium2Library.Element Should Be Visible    ${OwnershipStatusDD}
    Selenium2Library.Click Element    ${OwnershipStatusDD}
    Selenium2Library.Click Element    ${OwnershipStatusDDSearchbox}
    Selenium2Library.Input Text    ${OwnershipStatusDDSearchbox}    Contract
    Press Key    ${OwnershipStatusDDSearchbox}    \\13
    Selenium2Library.Element Should Be Visible    ${VehicleDivisionDD}
    Selenium2Library.Click Element    ${VehicleDivisionDD}
    Selenium2Library.Click Element    ${VehicleDivisionDDsearchbox}
    Selenium2Library.Input Text    ${VehicleDivisionDDsearchbox}    BS Bristol Schools
    Press Key    ${VehicleDivisionDDsearchbox}    \\13
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${VehicleRegionDD}
    Selenium2Library.Click Element    ${VehicleRegionDD}
    Sleep    2
    Selenium2Library.Click Element    ${VehicleRegionDDSearchbox}
    Selenium2Library.Input Text    ${VehicleRegionDDSearchbox}    Bristol
    Press Key    ${VehicleRegionDDSearchbox}    \\13
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${TelematicsDD}
    Selenium2Library.Click Element    ${TelematicsDD}
    Selenium2Library.Click Element    ${TelematicsDDVal}
    Selenium2Library.Element Should Be Visible    ${WebfleetRegistrationTB}
    Selenium2Library.Click Element    ${WebfleetRegistrationTB}
    ${webfleet_registration}    Generate Random String    5    ${RandomCombinations}
    Log    ${webfleet_registration}
    Set Global Variable    ${webfleet_registration}
    Selenium2Library.Input Text    ${WebfleetRegistrationTB}    123
    Execute Javascript    window.scroll(0,3600)
    Sleep    3
    Selenium2Library.Click Element    ${CreateVehicleSaveBTN}
    Sleep    3

Add new defect on Vehicle defects page
    Go To    ${VehicleDefetpage}
    Sleep    5
    Selenium2Library.Click Element    ${AddeNewDefectBTN}
    Sleep    3
    Selenium2Library.Page Should Contain    Create New Defect
    Sleep    2
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:20%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Creating New Defect...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${VSRegistrationTB}
    Sleep    1
    Selenium2Library.Click Element    ${AutoSearchBox}
    Selenium2Library.Input Text    ${AutoSearchBox}    ${RegNo}
    Sleep    3
    Press Key    ${AutoSearchBox}    \\13
    Selenium2Library.Click Element    ${OdometerTB}
    Selenium2Library.Input Text    ${OdometerTB}    10
    Sleep    5
    Selenium2Library.Element Should Be Visible    ${TrailerattachedDD}
    Selenium2Library.Click Element    ${TrailerattachedDD}
    Sleep    3
    Selenium2Library.Click Element    ${TrailerattachedDDVal}
    Sleep    2
    Selenium2Library.Click Element    ${AddDefecrConfirmBTN}
    Sleep    2
    Selenium2Library.Page Should Contain    Vehicle Summary
    sleep    3
    Selenium2Library.Click Element    ${AddDefecrConfirmBTN}
    Sleep    3
    Selenium2Library.Page Should Contain    Create New Defect
    Sleep    3
    Selenium2Library.Click Element    ${LeaksDefect}
    Sleep    2
    Selenium2Library.Click Element    ${WaterleaksDefect}
    Sleep    3
    Selenium2Library.Page Should Contain    Add Defect
    Sleep    5
    Send    {TAB}
    Sleep    3
    Send    {ENTER}
    Sleep    3
    Send    C:\\Users\\my\\Desktop\\GIF.gif
    Sleep    2
    Send    {ENTER}
    Sleep    5
    Selenium2Library.Element Should Be Visible    ${DefectSaveBTN}
    Selenium2Library.Click Element    ${DefectSaveBTN}
    Sleep    3
    Execute Javascript    window.scroll(200,5000)
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${CreateVehicleSaveBTN}
    Selenium2Library.Click Element    ${CreateVehicleSaveBTN}
    Sleep    3
    Selenium2Library.Page Should Contain    Confirm Vehicle Status
    Sleep    2
    Selenium2Library.Click Element    ${DefectSafeTooperateBTN}
    Sleep    5
    Selenium2Library.Click Element    ${VSRegistrationTB}
    Sleep    3
    AutoItLibrary.Send    ${RegNo}
    Sleep    2
    AutoItLibrary.Send    {ENTER}
    Comment    Sleep    2
    Comment    Press Key    ${AutoSearchBox}    \\13
    Sleep    3
    Selenium2Library.Element Should Be Visible    ${DefectEditBTN}
    Selenium2Library.Click Element    ${DefectEditBTN}
    Sleep    3
    ${defect ID}    Selenium2Library.get text    //*[@id="defect-details"]/tbody/tr[1]/td[2]
    Set Global Variable    ${defect ID}
    log    ${defect ID}

Change the columns selected on the page via the column management pop-up on User management page
    Go to    ${UserManagement}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify Column Management fields...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${ResertColumnDD}
    Sleep    2
    Selenium2Library.Click Element    ${UMUsernameCB}
    Selenium2Library.Click Element    ${UMJobTitleCB}
    Selenium2Library.Click Element    ${UMLandLineCB}
    Selenium2Library.Click Element    ${UMDivisionCB}
    Selenium2Library.Click Element    ${UMEnableAccountCB}
    Selenium2Library.Click Element    ${ModelSubmitBTN}
    Sleep    5
    Page Should Contain    Show inactive users
    Sleep    2

Reset the columns on User management page
    sleep    2
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify reset column functionality...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${ResetColumnBTN}
    Sleep    2
    Selenium2Library.Click Element    ${ResetColumnYesBTN}
    Sleep    2
    Page Should Contain    Show inactive users
    Sleep    2

Download/export a report on User management page
    sleep    2
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify downalod functionality ...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${DownloadProfileIcon}
    Sleep    5
    Reload Page
    Sleep    5

Reset the columns on Workshops page
    Sleep    2
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify Reset column functionality...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${WSResetColumnBTN}
    Sleep    2
    Selenium2Library.Click Element    ${WSResetConfirmBTN}
    Sleep    2
    Page Should Contain    Landline Number

Change the columns selected on the page via the column management pop-up on Workshops page
    Go to    ${Workshops}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify column management functionality...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${WSResetDD}
    Sleep    2
    Selenium2Library.Click Element    ${WSUsernameCB}
    Selenium2Library.Click Element    ${WSLandLineCB}
    Selenium2Library.Click Element    ${WSMobileCB}
    Selenium2Library.Click Element    ${WSAddress1CB}
    Selenium2Library.Click Element    ${WSAddress2CB}
    Selenium2Library.Click Element    ${WStownCityCB}
    Selenium2Library.Click Element    ${WSResetSubmit}
    Sleep    2
    Page Should Contain    Address1
    Sleep    2

Download/export a report on Workshops page
    sleep    1
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify download report functionality...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${WSDownloadReport}
    Sleep    5

Search by last name on User management page
    Go to    ${UserManagement}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify region search functionality ...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Input Text    ${UMSearchBynameTB}    ${last}
    Selenium2Library.Click Element    ${UMSearchBTN}
    Sleep    3
    Page should contain    ${last}
    Sleep    2
    Selenium2Library.Click Element    ${UMClearBTN}
    Sleep    2
    Selenium2Library.Click Element    ${UMAllRegionDD}
    sleep    1
    Selenium2Library.Click Element    //*[@id="select2-result-label-14"]
    sleep    1
    page should contain    ${first}
    sleep    2
    Selenium2Library.Click Element    ${UMClearBTN}
    Sleep    2
    page should contain    ${first}
    sleep    2
    Selenium2Library.Click Element    ${UMClearBTN}
    Sleep    2

Clear a search by last name on User management page
    Go to    ${UserManagement}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify user search functionality ...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Input Text    ${UMSearchBynameTB}    ${last}
    Selenium2Library.Click Element    ${UMSearchBTN}
    Sleep    3
    Page should contain    ${last}
    Sleep    2
    Selenium2Library.Click Element    ${UMClearBTN}
    Sleep    3

Search results using the “Search by company name” value on Workshops page
    Go to    ${Workshops}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify Search by company functionality...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Input Text    ${WSSearchByCompanyTB}    ${NewCompany}
    Selenium2Library.Click Element    ${WSSearchBTN}
    Sleep    3
    Page should contain    Sandeep
    Sleep    3

Clear a search on Workshops page
    Go to    ${Workshops}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify clear company name functionality...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Input Text    ${WSSearchByCompanyTB}    ${NewCompany}
    Selenium2Library.Click Element    ${WSSearchBTN}
    Sleep    3
    Page should contain    Sandeep
    Sleep    2
    Selenium2Library.Click Element    ${WSClearBTN}
    Sleep    3

Search results using the “Enter defect ID” value on Vehicle defects page
    Go To    ${VehicleDefetpage}
    Sleep    5
    Selenium2Library.Click Element    ${EnterDefectIDTB}
    Selenium2Library.Input Text    ${EnterDefectIDTB}    ${defect ID}
    Selenium2Library.Click Element    ${DefectSearchBTN}
    Sleep    3
    Selenium2Library.Click Element    ${DefectSearchClearBTN}

Clear a search on Vehicle defects page
    Go To    ${VehicleDefetpage}
    Sleep    5
    Selenium2Library.Click Element    ${EnterDefectIDTB}
    Selenium2Library.Input Text    ${EnterDefectIDTB}    ${defect ID}
    Selenium2Library.Click Element    ${DefectSearchBTN}
    Sleep    3
    Selenium2Library.Click Element    ${DefectSearchClearBTN}

Search results using the “Enter vehicle registration” value on Vehicle defects page
    Go to    ${VehicleDefetpage}
    sleep    5
    Selenium2Library.Click Element    ${VSRegistrationTB}
    Sleep    2
    Comment    Selenium2Library.Click Element    ${VSRegistrationTB}
    Comment    Selenium2Library.Input Text    ${VSRegistrationTB}    BTQA123
    AutoItLibrary.Send    ${RegNo}
    Sleep    2
    Comment    Press Key    ${VSRegistrationTB}    \\13
    AutoItLibrary.Send    {ENTER}
    Sleep    2
    Selenium2Library.Click Element    ${DefectSearchBTN}
    Selenium2Library.Page Should Contain    Leaks
    Selenium2Library.Click Element    ${DefectSearchClearBTN}
    Sleep    3

Edit a defect on Vehicle defects page
    Go to    ${VehicleDefetpage}
    sleep    5
    Selenium2Library.Click Element    ${VSRegistrationTB}
    Sleep    2
    Comment    Selenium2Library.Click Element    ${VSRegistrationTB}
    Comment    Selenium2Library.Input Text    ${VSRegistrationTB}    BTQA123
    Comment    Press Key    ${VSRegistrationTB}    \\13
    AutoItLibrary.Send    ${RegNo}
    Sleep    2
    AutoItLibrary.Send    {ENTER}
    Sleep    2
    Selenium2Library.Click Element    ${DefectSearchBTN}
    Sleep    3
    Selenium2Library.Element Should Be Visible    ${DefectEditBTN}
    Selenium2Library.Click Element    ${DefectEditBTN}
    Sleep    3
    Selenium2Library.Page Should Contain    ${RegNo}
    Sleep    2
    Selenium2Library.Click Element    xpath=/html/body/div[2]/div[2]/div/section/div[1]/div/div/a[2]
    Sleep    2
    Selenium2Library.Click Element    xpath=/html/body/div[2]/div[2]/div/section/div[1]/div/div/a[3]
    Sleep    3
    Execute Javascript    window.scroll(0,450)
    Sleep    2
    Selenium2Library.Click Element    //a[@id='defect-workshop-edit']
    sleep    2
    Selenium2Library.Click Element    xpath=/html/body/div[2]/div[2]/div/section/div[4]/div[1]/div/div[2]/table/tbody/tr[7]/td[2]/div/span/div/form/div/div[1]/div[1]/div/a
    sleep    2
    Selenium2Library.Click Element    //input[@id='s2id_autogen2_search']
    Sleep    1
    Selenium2Library.Input Text    //input[@id='s2id_autogen2_search']    qa
    Sleep    2
    Press Key    //input[@id='s2id_autogen2_search']    \\13
    Sleep    2
    Selenium2Library.Click Element    xpath=/html/body/div[2]/div[2]/div/section/div[4]/div[1]/div/div[2]/table/tbody/tr[7]/td[2]/div/span/div/form/div/div[1]/div[2]/button[1]/i
    Sleep    1
    Selenium2Library.Element Should Be Visible    //textarea[@name='comments']
    Selenium2Library.Click Element    //textarea[@name='comments']
    Send    {SPACE}
    Sleep    2
    Execute Javascript    window.scroll(0,1400)
    sleep    3
    Selenium2Library.Click Element    //input[@type='submit']
    Sleep    2

Add a new comment on Vehicle defects page
    Go to    ${VehicleDefetpage}
    sleep    5
    Selenium2Library.Click Element    ${VSRegistrationTB}
    Sleep    2
    Comment    Selenium2Library.Click Element    ${VSRegistrationTB}
    Comment    Selenium2Library.Input Text    ${VSRegistrationTB}    ${RegNo}
    Comment    Press Key    ${VSRegistrationTB}    \\13
    AutoItLibrary.Send    ${RegNo}
    Sleep    2
    AutoItLibrary.Send    {ENTER}
    Sleep    2
    Selenium2Library.Click Element    ${DefectSearchBTN}
    Sleep    3
    Selenium2Library.Click Element    ${ViewDefectIcon}
    Sleep    2
    Execute Javascript    window.scroll(0,1000)
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${AddNewCommentArea}
    Selenium2Library.Click Element    ${AddNewCommentArea}
    Sleep    1
    Selenium2Library.Input Text    ${AddNewCommentArea}    Testing is under progress... :)
    Sleep    3
    Execute Javascript    window.scroll(0,1500)
    Selenium2Library.Element Should Be Visible    ${SaveCommentBTN}
    Selenium2Library.Click Element    ${SaveCommentBTN}
    Sleep    2

Add a file on Vehicle defects page
    Go to    ${VehicleDefetpage}
    sleep    5
    Selenium2Library.Click Element    ${VSRegistrationTB}
    Sleep    2
    Comment    Selenium2Library.Click Element    ${VSRegistrationTB}
    Comment    Selenium2Library.Input Text    ${VSRegistrationTB}    ${RegNo}
    Comment    Press Key    ${VSRegistrationTB}    \\13
    Comment    Sleep    2
    AutoItLibrary.Send    ${RegNo}
    Sleep    2
    AutoItLibrary.Send    {ENTER}
    Sleep    2
    Selenium2Library.Click Element    ${DefectSearchBTN}
    Sleep    3
    Selenium2Library.Element Should Be Visible    ${ViewDefectIcon}
    Selenium2Library.Click Element    ${ViewDefectIcon}
    Sleep    2
    Execute Javascript    window.scroll(0,1100)
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${AddNewCommentArea}
    Selenium2Library.Click Element    ${AddNewCommentArea}
    Sleep    1
    Send    {TAB}
    Sleep    2
    Send    {ENTER}
    Sleep    2
    Send    C:\\Users\\my\\Desktop\\6277.xlsx
    Sleep    2
    Send    {ENTER}
    Sleep    5
    Execute Javascript    window.scroll(0,1500)
    Selenium2Library.Element Should Be Visible    ${SaveCommentBTN}
    Selenium2Library.Click Element    ${SaveCommentBTN}
    Sleep    2

Change the columns selected on the page via the column management pop-up on Vehicle defects page
    Go to    ${VehicleDefetpage}
    Sleep    5
    Selenium2Library.Click Element    ${ResertColumnDD}
    Sleep    2
    Selenium2Library.Click Element    ${DefectIDCB}
    Sleep    1
    Selenium2Library.Click Element    ${CategortCB}
    Sleep    1
    Selenium2Library.Element Should Be Visible    ${AllocatedToCB}
    Selenium2Library.Click Element    ${AllocatedToCB}
    Sleep    1
    Selenium2Library.Element Should Be Visible    ${DefectStatusCB}
    Selenium2Library.Click Element    ${DefectStatusCB}
    Sleep    1
    Selenium2Library.Element Should Be Visible    ${DateAddedToFleetCB}
    Selenium2Library.Click Element    ${DateAddedToFleetCB}
    Sleep    1
    Selenium2Library.Element Should Be Visible    ${VehiclecategoryCB}
    Selenium2Library.Click Element    ${VehiclecategoryCB}
    Sleep    1
    Selenium2Library.Element Should Be Visible    ${ModelSubmitBTN}
    Selenium2Library.Click Element    ${ModelSubmitBTN}
    Sleep    3
    Page Should Contain    Leaks
    Sleep    2

Reset the columns on Vehicle defects page
    Go to    ${VehicleDefetpage}
    Sleep    5
    Selenium2Library.Click Element    ${ResetColumnBTN}
    Sleep    3
    Selenium2Library.Click Element    ${ResetColumnYesBTN}
    Sleep    2
    Page Should Contain    Category
    Sleep    2

Download/export a report on Vehicle defects page
    Go to    ${VehicleDefetpage}
    Sleep    5
    Selenium2Library.Click Element    ${DownloadProfileIcon}
    Sleep    5

Search results using the “Regions” value on Vehicle checks page
    Go To    ${VehicleCheksPage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify Region filter...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${AdvancedSearchTB}
    Sleep    2
    Selenium2Library.Click Element    ${VCADVAllRegionDD}
    Sleep    2
    Selenium2Library.Click Element    ${VCADVAllRegionVal}
    Comment    Selenium2Library.Click Element    xpath=.//button[contains(., '')][@type='submit']
    Sleep    2
    Comment    Selenium2Library.Click Element    xpath=(.//button[contains(., '')])[2]
    Comment    Sleep    3
    ${Region}    Selenium2Library.Get Text    ${FPRegionname}
    log    ${Region}
    Should Contain    ${Region}    BS Bristol Schools
    Sleep    2
    Selenium2Library.Click Element    ${VCADVClearBTN}
    sleep    1
    Selenium2Library.Click Element    ${VCADVSearchcheckDD}
    sleep    2
    send    {ENTER}
    sleep    4
    page Should Contain    Vehicle take out
    Selenium2Library.Click Element    ${VCADVClearBTN}
    sleep    1

Search results using the “Enter vehicle registration” value on Vehicle checks page
    Go To    ${VehicleCheksPage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify Vehicle registration filter...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${VCVehicleRegDD}
    Selenium2Library.Input Text    ${VCVehicleRegVal}    FJ61GWN
    Sleep    2
    Selenium2Library.Click Element    ${VCVEhicleReg}
    Selenium2Library.Click Element    ${VCSearchBTN}
    Sleep    3
    Page Should Contain    FJ61GWN
    Sleep    2
    Selenium2Library.Click Element    ${VCClearBTN}
    Sleep    1

Search results using the “Select check result” value on Vehicle checks page
    Sleep    2
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify Select check result filter...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${VCADVSelectcheckResult}
    Selenium2Library.Click Element    ${VCADVSelectcheckResultval}
    Comment    Selenium2Library.Click Element    xpath=.//button[contains(., '')][@type='submit']
    Sleep    3
    Selenium2Library.Click Element    ${VCADVClearBTN}
    Sleep    3

Search results using the “Report date” value on Vehicle checks page
    Sleep    2
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify Date filter...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${VCADVDateDD}
    Selenium2Library.Click Element    ${VDADVDateVal}
    Comment    Selenium2Library.Click Element    xpath=.//button[contains(., '')][@type='submit']
    Sleep    5
    Selenium2Library.Click Element    ${VCADVClearBTN}
    Sleep    3

Change the columns selected on the page via the column management pop-up on Vehicle checks page
    Go to    ${VehicleCheksPage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify column management functionality...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${ResertColumnDD}
    Sleep    2
    Selenium2Library.Click Element    ${VCTypeCB}
    Selenium2Library.Click Element    ${VCVehicleStatusCB}
    Selenium2Library.Click Element    ${VCCheckResultCB}
    Selenium2Library.Click Element    ${VCRegionCB}
    Selenium2Library.Click Element    ${VCOdometerCB}
    Selenium2Library.Click Element    ${VCModelCB}
    Selenium2Library.Click Element    ${VCSubmitBTN}
    Sleep    2
    Page Should Contain    Vehicle return
    Sleep    2

Reset the columns on Vehicle checks page
    Sleep    2
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify reset column...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${WSResetColumnBTN}
    Sleep    2
    Selenium2Library.Click Element    ${ConfirmSendBTN}
    Sleep    3
    Page Should Contain    Type
    Sleep    2

Download/export a report on Vehicle checks page
    Sleep    2
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify download report functionality...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${DownloadProfileIcon}
    Sleep    5
    Page Should Contain    Recent Vehicle Checks

Change their password
    Go to    http://uat-firstmile.fleetmastr.com/settings
    Sleep    5
    Mouse Over    xpath=/html/body/div[1]/div/div[2]/div[2]/ul/li[2]/a/span[1]/i
    Selenium2Library.Click Element    //*[@id="changepasswordLink"]
    Sleep    2
    Selenium2Library.Input Text    xpath=(.//label[contains(normalize-space(.), 'Current password')]/following::input[@type='password'])[1]    password123
    Selenium2Library.Input Text    xpath=(.//label[contains(normalize-space(.), 'New password')]/following::input[@type='password'])[1]    password123
    Selenium2Library.Input Text    xpath=.//label[contains(normalize-space(.), 'Confirm new password')]/following::input[@type='password']    password123
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Save')][@type='button']
    Wait Until Page Does Not Contain    Password has been changed successfully.
    Sleep    3

Change the primary colour
    Go to    https://uat-skanska.fleetmastr.com/settings
    Sleep    5
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Primary colour*:')]/following::input[@type='text'])[1]
    Selenium2Library.Input Text    //input[@class='ui-colorpicker-hex-input']    3eade3
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Ok')]
    Sleep    2

Update the logo
    Choose file    xpath=(.//div[contains(normalize-space(.), 'Change image')])[last()]/child::input[@type='file']    C:\\Users\\aceor_indra\\Downloads\\fleetmastr.png
    Sleep    2
    Selenium2Library.Click Element    xpath=.//button[contains(normalize-space(.), 'Crop and upload')]
    Sleep    15
    Comment    Wait Until Page Contains    Change image
    Selenium2Library.Click Element    xpath=(.//button[contains(., 'Save')][@type='submit'])[1]
    Sleep    3
    Page Should Contain    Data has been saved successfully.
    Sleep    3

Switch defect email notifications on/off
    Selenium2Library.Click Element    xpath=.//a[contains(., 'Notifications')]
    Sleep    3
    Selenium2Library.Click Element    xpath=(.//label[contains(., 'Disabled')])[last()]
    Sleep    2
    Page Should Contain    Data has been saved successfully.
    Sleep    3

Show deleted users on Workshops page
    Go to    ${Workshops}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify show inactive user checkbox functionality...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Input Text    ${WSSearchByCompanyTB}    ${NewCompany}
    Selenium2Library.Click Element    ${WSSearchBTN}
    Sleep    3
    Page should contain    Sandeep
    Sleep    3
    Selenium2Library.Click Element    ${WSDeleteUserIcon}
    sleep    1
    Selenium2Library.Click Element    ${WSDeleteUserYesBTN}
    Sleep    5
    Selenium2Library.Click Element    ${WSShowinactiveusersCB}
    Sleep    5
    Page should contain    Sandeep

Edit user workshop record
    Sleep    2
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify edit user functionality...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${WSEditUserBTN}
    Sleep    3
    Selenium2Library.Input Text    ${WSEditFirstnameTB}    Sandeep1
    Selenium2Library.Input Text    ${WSEditLastnameTB}    Patel1
    Selenium2Library.Input Text    ${WSEditADR1TB}    Menpura1
    Selenium2Library.Input Text    ${WSEditADR2TB}    Dabhoi1
    Selenium2Library.Click Element    ${WSEditUpdateUserBTN}
    Sleep    3
    Page Should Contain    Data has been saved successfully.
    Sleep    2

Edit user record on User management page
    Sleep    2
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Edit user functionality ...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Input Text    ${UMSearchBynameTB}    ${last}
    sleep    1
    Selenium2Library.Click Element    ${UMSearchBTN }
    sleep    1
    Selenium2Library.Element Should Be Visible    ${UMUserEditBTN}
    Selenium2Library.Click Element    ${UMUserEditBTN}
    Sleep    5
    Sleep    2
    Selenium2Library.Input Text    //input[@value='${first}']    Harsh1
    Sleep    2
    Selenium2Library.Input Text    //input[@value='${last}']    Shah1
    Sleep    2
    Selenium2Library.Input Text    //input[@value='QA']    QA1
    Sleep    1
    Execute Javascript    window.scroll(0,500)
    Sleep    1
    Selenium2Library.Click Element    //*[@id="editUser"]/div[3]/div/div/button[2]
    Sleep    3
    Page Should Contain    Data has been saved successfully.
    Sleep    5

Create a check in App
    Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=6.0.1    deviceName=192.168.0.201:5037    appPackage=com.aecor.fleetmastr    appActivity=com.aecor.fleetmastr.SplashActivity
    sleep    10
    Comment    AppiumLibrary.Click Element    id=com.android.packageinstaller:id/permission_allow_button
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/input_email    asoni@aecordigital.com
    sleep    5
    AppiumLibrary.Input Text    id=com.aecor.fleetmastr:id/input_password    password
    sleep    3
    AppiumLibrary.Click Element    id=com.aecor.fleetmastr:id/btn_login
    Sleep    15
    AppiumLibrary.Wait Until Element Is Visible    id=com.aecor.fleetmastr:id/ll_take_out_vehicle
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
    Click Text    Screenwash
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
    Comment    Return
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
    Sleep    10

View vehicle check
    Go to    ${VehicleCheksPage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="View vehicle check...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${VCViewVehiclecheck}
    Sleep    5

Export vehicle check
    Sleep    2
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Export vehicle check...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${VCExportVehilecheck}
    Sleep    3
    Comment    Page Should Not Contain    Whoops, looks like something went wrong.
    sleep    1

Edit a vehicle check
    Go to    ${VehicleCheksPage}
    Sleep    5
    Selenium2Library.Click Element    ${VCViewVehiclecheck}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Edit vehicle check...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${VCEditVehiclecheckBTN}
    Sleep    2
    Comment    Add a defect
    Selenium2Library.Click Element    ${VCLeaks}
    Sleep    2
    Page Should Contain    Fuel leak
    execute javascript    window.scroll(0,500)
    Sleep    1
    Selenium2Library.Click Element    ${VCLeakEditBTN}
    Sleep    2
    Selenium2Library.Click Element    ${VCDefectBTN}
    Sleep    5
    Selenium2Library.Click Element    ${VCUploadBTN}
    Sleep    3
    Send    C:\\Users\\my\\Desktop\\GIF.gif
    Sleep    3
    send    {ENTER}
    Comment    Choose file    xpath=.//button[contains(normalize-space(.), 'Upload image')][@type='button']    C:\\Users\\Public\\Pictures\\pc-101-1.png
    Sleep    5
    Selenium2Library.Input Text    ${VCDefectcommentModel}    Defect1
    Selenium2Library.Click Element    ${VCEditDefectSaveBTN}
    Sleep    5
    Comment    Page Should Contain    Check has been updated successfully.
    Comment    Sleep    5
    Comment    Edit a defect
    Go to    ${VehicleCheksPage}
    Sleep    5
    Selenium2Library.Click Element    ${VCViewVehiclecheck}
    Sleep    3
    Selenium2Library.Click Element    ${VCEditVehiclecheckBTN}
    Sleep    1
    Page Should Contain    Edit mode has been enabled.
    Selenium2Library.Click Element    ${VCLeaks}
    Sleep    2
    Page Should Contain    Fuel leak
    Selenium2Library.Click Element    ${VCLeakEditBTN}
    Sleep    2
    Selenium2Library.Click Element    ${VCEditDefectNodefect}
    Sleep    2
    Selenium2Library.Input Text    ${VCDefectcommentModel}    No defect
    Selenium2Library.Click Element    ${VCEditDefectSaveBTN}
    Sleep    5
    Page Should Contain    Registration

Count is not Zero
    Selenium2Library.Click Element    ${RoadworthyVehicles}
    Sleep    5
    Page should contain    Vehicle Search
    Sleep    2
    Execute JavaScript    window.scrollTo(0,1000)
    Sleep    2
    ${TotalVehicls}    Selenium2Library.Get Text    ${Countpagination}
    log    ${TotalVehicls}
    Should Contain Any    ${TotalVehicls}    ${RoadworthyVehiclesCount}

Count is Zero
    Selenium2Library.Click Element    ${RoadworthyVehicles}
    Sleep    5
    Page should contain    Vehicle Search
    Sleep    2
    Page should contain    No information available

Create Report Incident
    Selenium2Library.Go To    ${ReportIncidentPage}
    Sleep    5
    Selenium2Library.Click Element    ${AddNewIncidentBTN}
    Sleep    3
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:20%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Creating new incident...!";document.body.appendChild(el);
    Sleep    1
    Selenium2Library.Click Element    ${CreateNewIncidentReg}
    Sleep    3
    send    BTQA123
    Sleep    1
    send    {ENTER}
    Sleep    3
    Selenium2Library.Click Element    ${DateandTimeIcon}
    Sleep    2
    Selenium2Library.Click Element    ${SelectDateOfIncident}
    Sleep    3
    Selenium2Library.Click Element    ${SelectTimeofIncident}
    Sleep    3
    Selenium2Library.Click Element    ${SelectMinutesofIncident}
    Sleep    3
    Selenium2Library.Click Element    ${TypeOfIncident}
    Sleep    3
    send    {ENTER}
    Sleep    3
    Selenium2Library.Click Element    ${Classification}
    Sleep    3
    send    {ENTER}
    Sleep    3
    Selenium2Library.Click Element    ${ReportedtoInsurance}
    Sleep    3
    send    {TAB}
    Sleep    3
    send    {ENTER}
    Sleep    5
    Send    C:\\Users\\my\\Desktop\\6277.xlsx
    Sleep    2
    Send    {ENTER}
    Sleep    5
    Selenium2Library.Click Element    ${IncidentUploadBTN}
    Sleep    5
    Selenium2Library.Click Element    ${IncidentSaveBTN}
    Page Should Contain    Incident List
    Sleep    3
    Selenium2Library.Click Element    ${ViewIncidentIcon}
    Sleep    5
    ${Incient No}    Selenium2Library.get text    ${IncidentNo}
    Set Global Variable    ${Incient No}
    log    ${Incient No}

Search Incident report
    Go to    ${ReportIncidentPage}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:10%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 350px;"); \ el.innerHTML ="Performing Incident search functionality...!";document.body.appendChild(el);
    Sleep    1
    Selenium2Library.Click Element    ${VSRegistrationTB}
    AutoItLibrary.Send    BTQA123
    Sleep    2
    Comment    Press Key
    AutoItLibrary.Send    {ENTER}
    Sleep    2
    Selenium2Library.Click Element    ${DefectSearchBTN}
    Selenium2Library.Page Should Contain    Glass damage
    Selenium2Library.Click Element    ${DefectSearchClearBTN}
    Sleep    3
    Selenium2Library.Click Element    ${EnterIncidentIDTB}
    Sleep    3
    AutoItLibrary.Send    ${Incient No}
    Sleep    3
    Selenium2Library.Click Element    ${DefectSearchBTN}
    sleep    2
    Selenium2Library.Page Should Contain    Glass damage
    Selenium2Library.Click Element    ${DefectSearchClearBTN}
    Sleep    3
    Selenium2Library.Click Element    ${CreatedByTB}
    Sleep    3
    AutoItLibrary.Send    a support
    sleep    2
    AutoItLibrary.Send    {ENTER}
    sleep    2
    Selenium2Library.Click Element    ${DefectSearchBTN}
    Selenium2Library.Page Should Contain    Glass damage
    Selenium2Library.Click Element    ${DefectSearchClearBTN}
    Sleep    3

Edit Incident report
    Go to    ${ReportIncidentPage}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:10%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Performing edit incident functionality...!";document.body.appendChild(el);
    Sleep    3
    Selenium2Library.Click Element    ${EnterIncidentIDTB}
    Sleep    3
    AutoItLibrary.Send    ${Incient No}
    Sleep    3
    Selenium2Library.Click Element    ${DefectSearchBTN}
    sleep    2
    Selenium2Library.Page Should Contain    Glass damage
    Selenium2Library.Click Element    ${ProfileEditIcon}
    sleep    2
    Selenium2Library.Click Element    ${Incidentallocatedto}
    sleep    2
    Selenium2Library.Click Element    ${IncidentallocatetoSearch}
    sleep    2
    Selenium2Library.Click Element    ${IncidentallocatetoSearchTB}
    Selenium2Library.Input Text    ${IncidentallocatetoSearchTB}    Company
    sleep    1
    AutoItLibrary.Send    {ENTER}
    sleep    2
    Selenium2Library.Click Element    ${IncidentAllocatedtoSaveBTN}
    sleep    4
    Page Should Contain    company
    sleep    1

Upload document and add commnet in Incident report
    Go to    ${ReportIncidentPage}
    sleep    5
    Selenium2Library.Click Element    ${DefectSearchClearBTN}
    Sleep    3
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:10%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Uploading documents to incident ...!";document.body.appendChild(el);
    Sleep    3
    Selenium2Library.Click Element    ${EnterIncidentIDTB}
    Sleep    3
    AutoItLibrary.Send    ${Incient No}
    Sleep    3
    Selenium2Library.Click Element    ${DefectSearchBTN}
    sleep    2
    Selenium2Library.Page Should Contain    Glass damage
    Selenium2Library.Click Element    ${ProfileEditIcon}
    sleep    2
    Sleep    2
    Execute Javascript    window.scroll(0,500)
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${AddNewCommentArea}
    sleep    2
    Selenium2Library.Click Element    ${AddNewCommentArea}
    Sleep    1
    Selenium2Library.Input Text    ${AddNewCommentArea}    Testing is under progress... :)
    Sleep    3
    Comment    Execute Javascript    window.scroll(0,500)
    Selenium2Library.Element Should Be Visible    ${SaveCommentBTN}
    Selenium2Library.Click Element    ${SaveCommentBTN}
    Sleep    4
    Page Should Contain    Testing is under progress... :)
    sleep    2
    Selenium2Library.Element Should Be Visible    ${AddNewCommentArea}
    Selenium2Library.Click Element    ${AddNewCommentArea}
    Sleep    2
    Send    {TAB}
    Sleep    3
    Send    {ENTER}
    Sleep    4
    Send    C:\\Users\\my\\Desktop\\6277.xlsx
    Sleep    2
    Send    {ENTER}
    Sleep    5
    Comment    Execute Javascript    window.scroll(0,1500)
    Selenium2Library.Element Should Be Visible    ${SaveCommentBTN}
    Selenium2Library.Click Element    ${SaveCommentBTN}
    Sleep    2
    Page Should Contain    6277.xlsx

Change the columns selected on the page via the column management pop-up on Report Incident page
    Go to    ${ReportIncidentPage}
    Sleep    5
    Selenium2Library.Click Element    ${ResertColumnDD}
    Sleep    1
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:10%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Performing change column functionality ...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${DefectIDCB}
    Sleep    1
    Selenium2Library.Click Element    ${IncidentDateCB}
    Sleep    1
    Selenium2Library.Click Element    ${IncidentSatusCB}
    Sleep    1
    Selenium2Library.Element Should Be Visible    ${IncidentAllocatedToCB}
    Selenium2Library.Click Element    ${IncidentAllocatedToCB}
    Sleep    1
    Selenium2Library.Element Should Be Visible    ${ModelSubmitBTN}
    Selenium2Library.Click Element    ${ModelSubmitBTN}
    Sleep    3
    Page Should Contain    Glass damage
    Sleep    2

Reset the columns on Report Incident page
    Go to    ${ReportIncidentPage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:10%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Performing reset column functionality ...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${ResetColumnBTN}
    Sleep    3
    Selenium2Library.Click Element    ${ResetColumnYesBTN}
    Sleep    2
    Page Should Contain    Glass damage
    Sleep    2

Download/export a report on Report incident page
    Go to    ${ReportIncidentPage}
    Sleep    5
    Selenium2Library.Click Element    ${DownloadProfileIcon}
    Sleep    5
    Selenium2Library.Page Should Contain    Company
    sleep    1

Reset Column for Fleet Planning
    Go to    ${FleetPlanningpage}
    Sleep    5
    Drag And Drop    ${FPAnnualServieColumn}    ${FPLocationColumn}
    sleep    2
    Selenium2Library.Click Element    ${ResetColumnBTN}
    Sleep    3
    Selenium2Library.Click Element    ${ResetColumnYesBTN}
    Sleep    2
    Page Should Contain    All Regions
    Sleep    2

Verify Details of Calendar Tab
    sleep    1
    Go to    ${FleetPlanningpage}
    Sleep    5
    Selenium2Library.Click Element    ${FPCalendarTab}
    sleep    2
    Page Should Contain    Today
    Selenium2Library.Click Element    ${FPCalAllDD}
    sleep    2
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Checking Event filter...!";document.body.appendChild(el);
    sleep    2
    Selenium2Library.Input Text    ${FPCalAllDDVal}    ADR
    sleep    2
    Comment    Send    {ADR}
    Comment    sleep    2
    Send    {ENTER}
    sleep    2
    Page Should Contain    Today
    sleep    2
    ${Date1}    Selenium2Library.Get text    ${FPCalTodayDate}
    log    ${Date1}
    sleep    2
    Selenium2Library.Click Element    ${FPCalTodayDate}
    sleep    4
    Selenium2Library.Click Element    ${FPCalTodayBTN}
    sleep    2
    Comment    #select month
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Changing calendar view from Month to Year...!";document.body.appendChild(el);
    sleep    2
    Selenium2Library.Click Element    ${FPCalYearOPN}
    sleep    4
    Page Should Contain    June
    sleep    2
    Selenium2Library.Click Element    ${FPCalExportPlanner}
    Page Should Contain    June
    sleep    1

Verify Message History tab
    Go To    ${Messagespage}
    Sleep    5
    Execute Javascript    window.scroll(0,0);
    sleep    1
    Selenium2Library.Click Element    ${HistoryTab}
    sleep    2
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Check details in history...!";document.body.appendChild(el);
    sleep    1
    Selenium2Library.Click Element    ${HistoryDetailsBTN}
    sleep    2
    ${Report Details}    Selenium2Library.Get text    ${HistoryReportDetails}
    log    ${Report Details}
    Should Contain    ${Report Details}    Admin Support
    Should Contain    ${Report Details}    Message
    Should Contain    ${Report Details}    Delivered
    Should Contain    ${Report Details}    None
    ${Date}    Selenium2Library.Get text    ${HistoyDate}
    log    ${Date}
    ${Sender}    Selenium2Library.Get text    ${HistorySender}
    log    ${Sender}
    ${Template}    Selenium2Library.Get text    ${HistoryTemplate}
    log    ${Template}
    ${Recipients}    Selenium2Library.Get text    ${HistoryRecipients}
    log    ${Recipients}
    Selenium2Library.Click Element    ${DownloadStatus}
    sleep    1
    Selenium2Library.Click Element    ${CloseReport}

Delete user record on User management page
    Sleep    2
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Delete user functionality ...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Input Text    ${UMSearchBynameTB}    ${last}
    Selenium2Library.Element Should Be Visible    ${UMDeleteIcon}
    Selenium2Library.Click Element    ${UMDeleteIcon}
    Sleep    4
    Selenium2Library.Click Element    ${UMDeleteConfirmBTN}
    Sleep    6
    Selenium2Library.Click Element    ${UMCluear1BTN}
    sleep    2
    Selenium2Library.Input Text    ${UMSearchBynameTB}    ${last}
    Sleep    2
    Selenium2Library.Click Element    ${WSSearchBTN}
    Sleep    1
    Selenium2Library.Click Element    ${UMSjowinactiveuserCB}
    Sleep    1
    Page Should Contain    Shah1
    Sleep    1

Download Last login standard report
    go to    ${Reportspage}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Downlaod last login standard report...!";document.body.appendChild(el);
    Selenium2Library.Click Element    ${Reportstab}
    sleep    2
    Sleep    2
    Selenium2Library.Click Element    ${ReportsSearchbtnameTB}
    sleep    2
    Selenium2Library.Input Text    ${ReportsSearchbtnameTB}    Last Login Report
    sleep    1
    Selenium2Library.Click Element    ${ReprotsSearchBTN}
    sleep    5
    Selenium2Library.Click Element    ${ReportViewBTN}
    sleep    5
    Selenium2Library.Click Element    ${ReportDownloadBTN}
    Wait Until Element Is Enabled    ${ReportsSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadTab}
    Wait Until Element Is Enabled    ${DownloadSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadSearchbtnameTB}
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    Last Login Report
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ActionDownloadicon}
    sleep    2
    Page Should Contain    Last Login Report
    sleep    5
    Reload Page
    sleep    5
    Selenium2Library.Click Element    ${DownloadTab}
    sleep    2
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    Last Login Report
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ACtionDeleteicon}
    sleep    5
    Selenium2Library.Click Element    ${ActionDeleteYesBTN}
    sleep    2

Download Last login custom report
    go to    ${Reportspage}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Downlaod last login custom report...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${Reportstab}
    sleep    2
    Selenium2Library.Click Element    ${ReportsSearchbtnameTB}
    sleep    2
    Selenium2Library.Input Text    ${ReportsSearchbtnameTB}    Last Login Report
    sleep    1
    Selenium2Library.Click Element    ${ReprotsSearchBTN}
    sleep    5
    Selenium2Library.Click Element    ${DownlaodEditicon}
    sleep    5
    Selenium2Library.Click Element    ${EditReportname}
    Selenium2Library.Input Text    ${EditReportname}    Last Login Report Edit
    Selenium2Library.Click Element    ${EditDescription}
    Selenium2Library.Input Text    ${EditDescription}    Removing first name
    sleep    1
    Selenium2Library.Click Element    ${EditFirstChekbox}
    sleep    1
    Selenium2Library.Click Element    ${EditNextBTN}
    sleep    2
    Selenium2Library.Click Element    ${EditGeneratereport}
    Wait Until Element Is Enabled    ${ReportsSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadTab}
    Wait Until Element Is Enabled    ${DownloadSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadSearchbtnameTB}
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    Last Login Report Edit
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ActionDownloadicon}
    sleep    2
    Page Should Contain    Last Login Report Edit
    sleep    5
    Reload Page
    sleep    5
    Selenium2Library.Click Element    ${DownloadTab}
    sleep    2
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    Last Login Report Edit
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ACtionDeleteicon}
    sleep    5
    Selenium2Library.Click Element    ${ActionDeleteYesBTN}
    sleep    2

Download User check standard report
    go to    ${Reportspage}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Download User check standard report ...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${Reportstab}
    sleep    2
    Selenium2Library.Click Element    ${ReportsSearchbtnameTB}
    sleep    2
    Selenium2Library.Input Text    ${ReportsSearchbtnameTB}    User Checks Report
    sleep    1
    Selenium2Library.Click Element    ${ReprotsSearchBTN}
    sleep    5
    Selenium2Library.Click Element    ${ReportViewBTN}
    sleep    5
    Selenium2Library.Click Element    ${DateRangeDD}
    sleep    1
    Selenium2Library.Click Element    ${DateRangeToday}
    sleep    2
    Selenium2Library.Click Element    ${ReportDownloadBTN}
    Wait Until Element Is Enabled    ${ReportsSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadTab}
    Wait Until Element Is Enabled    ${DownloadSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadSearchbtnameTB}
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    User Checks Report
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ActionDownloadicon}
    sleep    2
    Page Should Contain    User Checks Report
    sleep    5
    Reload Page
    sleep    5
    Selenium2Library.Click Element    ${DownloadTab}
    sleep    2
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    User Checks Report
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ACtionDeleteicon}
    sleep    5
    Selenium2Library.Click Element    ${ActionDeleteYesBTN}
    sleep    2

Download User check custom report
    go to    ${Reportspage}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Download User check custom report...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${Reportstab}
    sleep    2
    Selenium2Library.Click Element    ${ReportsSearchbtnameTB}
    sleep    2
    Selenium2Library.Input Text    ${ReportsSearchbtnameTB}    User Defects Report
    sleep    1
    Selenium2Library.Click Element    ${ReprotsSearchBTN}
    sleep    5
    Selenium2Library.Click Element    ${DownlaodEditicon}
    sleep    5
    Selenium2Library.Click Element    ${EditReportname}
    Selenium2Library.Input Text    ${EditReportname}    User Defects Report Edit
    Selenium2Library.Click Element    ${EditDescription}
    Selenium2Library.Input Text    ${EditDescription}    Removing first name
    sleep    1
    Selenium2Library.Click Element    ${EditFirstChekbox}
    sleep    1
    Selenium2Library.Click Element    ${DateRangeDD}
    sleep    1
    Selenium2Library.Click Element    ${DateRangeToday}
    sleep    1
    Selenium2Library.Click Element    ${EditNextBTN}
    sleep    2
    Selenium2Library.Click Element    ${EditGeneratereport}
    Wait Until Element Is Enabled    ${ReportsSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadTab}
    Wait Until Element Is Enabled    ${DownloadSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadSearchbtnameTB}
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    User Defects Report Edit
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ActionDownloadicon}
    sleep    2
    Page Should Contain    User Defects Report
    sleep    5
    Reload Page
    sleep    5
    Selenium2Library.Click Element    ${DownloadTab}
    sleep    2
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    User Defects Report Edit
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ACtionDeleteicon}
    sleep    5
    Selenium2Library.Click Element    ${ActionDeleteYesBTN}
    sleep    2

Download User defect standard report
    go to    ${Reportspage}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Download User defect standard report...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${Reportstab}
    sleep    2
    Selenium2Library.Click Element    ${ReportsSearchbtnameTB}
    sleep    2
    Selenium2Library.Input Text    ${ReportsSearchbtnameTB}    User Defects Report
    sleep    1
    Selenium2Library.Click Element    ${ReprotsSearchBTN}
    sleep    5
    Selenium2Library.Click Element    ${ReportViewBTN}
    sleep    5
    Selenium2Library.Click Element    ${DateRangeDD}
    sleep    1
    Selenium2Library.Click Element    ${DateRangeToday}
    sleep    2
    Selenium2Library.Click Element    ${ReportDownloadBTN}
    Wait Until Element Is Enabled    ${ReportsSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadTab}
    Wait Until Element Is Enabled    ${DownloadSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadSearchbtnameTB}
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    User Defects Report
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ActionDownloadicon}
    sleep    2
    Page Should Contain    User Defects Report
    sleep    5
    Reload Page
    sleep    5
    Selenium2Library.Click Element    ${DownloadTab}
    sleep    2
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    User Defects Report
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ACtionDeleteicon}
    sleep    5
    Selenium2Library.Click Element    ${ActionDeleteYesBTN}
    sleep    2

Download User defect custom report
    go to    ${Reportspage}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Download User defect custom report...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${Reportstab}
    sleep    2
    Selenium2Library.Click Element    ${ReportsSearchbtnameTB}
    sleep    2
    Selenium2Library.Input Text    ${ReportsSearchbtnameTB}    User Defects Report
    sleep    1
    Selenium2Library.Click Element    ${ReprotsSearchBTN}
    sleep    5
    Selenium2Library.Click Element    ${DownlaodEditicon}
    sleep    5
    Selenium2Library.Click Element    ${EditReportname}
    Selenium2Library.Input Text    ${EditReportname}    User Defects Report Edit
    Selenium2Library.Click Element    ${EditDescription}
    Selenium2Library.Input Text    ${EditDescription}    Removing first name
    sleep    1
    Selenium2Library.Click Element    ${EditFirstChekbox}
    sleep    1
    Selenium2Library.Click Element    ${DateRangeDD}
    sleep    1
    Selenium2Library.Click Element    ${DateRangeToday}
    sleep    1
    Selenium2Library.Click Element    ${EditNextBTN}
    sleep    2
    Selenium2Library.Click Element    ${EditGeneratereport}
    Wait Until Element Is Enabled    ${ReportsSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadTab}
    Wait Until Element Is Enabled    ${DownloadSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadSearchbtnameTB}
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    User Defects Report Edit
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ActionDownloadicon}
    sleep    2
    Page Should Contain    User Defects Report Edit
    sleep    5
    Reload Page
    sleep    5
    Selenium2Library.Click Element    ${DownloadTab}
    sleep    2
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    User Defects Report Edit
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ACtionDeleteicon}
    sleep    5
    Selenium2Library.Click Element    ${ActionDeleteYesBTN}
    sleep    2

Download User detail standard report
    go to    ${Reportspage}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Download User detail standard report ...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${Reportstab}
    sleep    2
    Selenium2Library.Click Element    ${ReportsSearchbtnameTB}
    sleep    2
    Selenium2Library.Input Text    ${ReportsSearchbtnameTB}    User Details Report
    sleep    1
    Selenium2Library.Click Element    ${ReprotsSearchBTN}
    sleep    5
    Selenium2Library.Click Element    ${ReportViewBTN}
    sleep    5
    Selenium2Library.Click Element    ${ReportDownloadBTN}
    Wait Until Element Is Enabled    ${ReportsSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadTab}
    Wait Until Element Is Enabled    ${DownloadSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadSearchbtnameTB}
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    User Details Report
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ActionDownloadicon}
    sleep    2
    Page Should Contain    User Details Report
    sleep    5
    Reload Page
    sleep    5
    Selenium2Library.Click Element    ${DownloadTab}
    sleep    2
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    User Details Report
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ACtionDeleteicon}
    sleep    5
    Selenium2Library.Click Element    ${ActionDeleteYesBTN}
    sleep    2

Download User detail custom report
    go to    ${Reportspage}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Download User detail custom report...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${Reportstab}
    sleep    2
    Selenium2Library.Click Element    ${ReportsSearchbtnameTB}
    sleep    2
    Selenium2Library.Input Text    ${ReportsSearchbtnameTB}    User Details Report
    sleep    1
    Selenium2Library.Click Element    ${ReprotsSearchBTN}
    sleep    5
    Selenium2Library.Click Element    ${DownlaodEditicon}
    sleep    5
    Selenium2Library.Click Element    ${EditReportname}
    Selenium2Library.Input Text    ${EditReportname}    User Details Report Edit
    Selenium2Library.Click Element    ${EditDescription}
    Selenium2Library.Input Text    ${EditDescription}    Removing first name
    sleep    1
    Selenium2Library.Click Element    ${EditFirstChekbox}
    sleep    1
    Selenium2Library.Click Element    ${EditNextBTN}
    sleep    2
    Selenium2Library.Click Element    ${EditGeneratereport}
    Wait Until Element Is Enabled    ${ReportsSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadTab}
    Wait Until Element Is Enabled    ${DownloadSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadSearchbtnameTB}
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    User Details Report Edit
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ActionDownloadicon}
    sleep    2
    Page Should Contain    User Details Report
    sleep    5
    Reload Page
    sleep    5
    Selenium2Library.Click Element    ${DownloadTab}
    sleep    2
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    User Details Report Edit
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ACtionDeleteicon}
    sleep    5
    Selenium2Library.Click Element    ${ActionDeleteYesBTN}
    sleep    2

Download Vehicle Check standard report
    go to    ${Reportspage}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Download Vehicle Check standard report ..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${Reportstab}
    sleep    2
    Selenium2Library.Click Element    ${ReportsSearchbtnameTB}
    sleep    2
    Selenium2Library.Input Text    ${ReportsSearchbtnameTB}    Vehicle Checks Report
    sleep    1
    Selenium2Library.Click Element    ${ReprotsSearchBTN}
    sleep    5
    Selenium2Library.Click Element    ${ReportViewBTN}
    sleep    5
    Selenium2Library.Click Element    ${DateRangeDD}
    sleep    1
    Selenium2Library.Click Element    ${DateRangeToday}
    sleep    2
    Selenium2Library.Click Element    ${ReportDownloadBTN}
    Wait Until Element Is Enabled    ${ReportsSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadTab}
    Wait Until Element Is Enabled    ${DownloadSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadSearchbtnameTB}
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    Vehicle Checks Report
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ActionDownloadicon}
    sleep    2
    Page Should Contain    Vehicle Checks Report
    sleep    5
    Reload Page
    sleep    5
    Selenium2Library.Click Element    ${DownloadTab}
    sleep    2
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    Vehicle Checks Report
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ACtionDeleteicon}
    sleep    5
    Selenium2Library.Click Element    ${ActionDeleteYesBTN}
    sleep    2

Download Vehicle check custom report
    go to    ${Reportspage}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Download Vehicle Check custom report..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${Reportstab}
    sleep    2
    Selenium2Library.Click Element    ${ReportsSearchbtnameTB}
    sleep    2
    Selenium2Library.Input Text    ${ReportsSearchbtnameTB}    Vehicle Checks Report
    sleep    1
    Selenium2Library.Click Element    ${ReprotsSearchBTN}
    sleep    5
    Selenium2Library.Click Element    ${DownlaodEditicon}
    sleep    5
    Selenium2Library.Click Element    ${EditReportname}
    Selenium2Library.Input Text    ${EditReportname}    Vehicle Checks Report Edit
    Selenium2Library.Click Element    ${EditDescription}
    Selenium2Library.Input Text    ${EditDescription}    Removing first name
    sleep    1
    Selenium2Library.Click Element    ${EditFirstChekbox}
    sleep    1
    Selenium2Library.Click Element    ${DateRangeDD}
    sleep    1
    Selenium2Library.Click Element    ${DateRangeToday}
    sleep    1
    sleep    1
    Selenium2Library.Click Element    ${EditNextBTN}
    sleep    2
    Selenium2Library.Click Element    ${EditGeneratereport}
    Wait Until Element Is Enabled    ${ReportsSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadTab}
    Wait Until Element Is Enabled    ${DownloadSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadSearchbtnameTB}
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    Vehicle Checks Report Edit
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ActionDownloadicon}
    sleep    2
    Page Should Contain    Vehicle Checks Report
    sleep    5
    Reload Page
    sleep    5
    Selenium2Library.Click Element    ${DownloadTab}
    sleep    2
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    Vehicle Checks Report Edit
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ACtionDeleteicon}
    sleep    5
    Selenium2Library.Click Element    ${ActionDeleteYesBTN}
    sleep    2

Download Vehicle defect standard report
    go to    ${Reportspage}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Download Vehicle defect standard report..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${Reportstab}
    sleep    2
    Selenium2Library.Click Element    ${ReportsSearchbtnameTB}
    sleep    2
    Selenium2Library.Input Text    ${ReportsSearchbtnameTB}    Vehicle Defects Report
    sleep    1
    Selenium2Library.Click Element    ${ReprotsSearchBTN}
    sleep    5
    Selenium2Library.Click Element    ${ReportViewBTN}
    sleep    5
    Selenium2Library.Click Element    ${DateRangeDD}
    sleep    1
    Selenium2Library.Click Element    ${DateRangeToday}
    sleep    2
    Selenium2Library.Click Element    ${ReportDownloadBTN}
    Wait Until Element Is Enabled    ${ReportsSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadTab}
    Wait Until Element Is Enabled    ${DownloadSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadSearchbtnameTB}
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    Vehicle Defects Report
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ActionDownloadicon}
    sleep    2
    Page Should Contain    Vehicle Defects Report
    sleep    5
    Reload Page
    sleep    5
    Selenium2Library.Click Element    ${DownloadTab}
    sleep    2
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    Vehicle Defects Report
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ACtionDeleteicon}
    sleep    5
    Selenium2Library.Click Element    ${ActionDeleteYesBTN}
    sleep    2

Download Vehicle defect custom report
    go to    ${Reportspage}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Download Vehicle defect custom report..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${Reportstab}
    sleep    2
    Selenium2Library.Click Element    ${ReportsSearchbtnameTB}
    sleep    2
    Selenium2Library.Input Text    ${ReportsSearchbtnameTB}    Vehicle Defects Report
    sleep    1
    Selenium2Library.Click Element    ${ReprotsSearchBTN}
    sleep    5
    Selenium2Library.Click Element    ${DownlaodEditicon}
    sleep    5
    Selenium2Library.Click Element    ${EditReportname}
    Selenium2Library.Input Text    ${EditReportname}    Vehicle Defects Report Edit
    Selenium2Library.Click Element    ${EditDescription}
    Selenium2Library.Input Text    ${EditDescription}    Removing first name
    sleep    1
    Selenium2Library.Click Element    ${EditFirstChekbox}
    sleep    1
    Selenium2Library.Click Element    ${DateRangeDD}
    sleep    1
    Selenium2Library.Click Element    ${DateRangeToday}
    sleep    1
    Selenium2Library.Click Element    ${EditNextBTN}
    sleep    2
    Selenium2Library.Click Element    ${EditGeneratereport}
    Wait Until Element Is Enabled    ${ReportsSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadTab}
    Wait Until Element Is Enabled    ${DownloadSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadSearchbtnameTB}
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    Vehicle Defects Report Edit
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ActionDownloadicon}
    sleep    2
    Page Should Contain    Vehicle Defects Report
    sleep    5
    Reload Page
    sleep    5
    Selenium2Library.Click Element    ${DownloadTab}
    sleep    2
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    Vehicle Defects Report
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ACtionDeleteicon}
    sleep    5
    Selenium2Library.Click Element    ${ActionDeleteYesBTN}
    sleep    2

Download Vehicle detail standard report
    go to    ${Reportspage}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Download Vehicle detail standard report..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${Reportstab}
    sleep    2
    Selenium2Library.Click Element    ${ReportsSearchbtnameTB}
    sleep    2
    Selenium2Library.Input Text    ${ReportsSearchbtnameTB}    Vehicle Details Report
    sleep    1
    Selenium2Library.Click Element    ${ReprotsSearchBTN}
    sleep    5
    Selenium2Library.Click Element    ${ReportViewBTN}
    sleep    5
    Selenium2Library.Click Element    ${ReportDownloadBTN}
    Wait Until Element Is Enabled    ${ReportsSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadTab}
    Wait Until Element Is Enabled    ${DownloadSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadSearchbtnameTB}
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    Vehicle Details Report
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ActionDownloadicon}
    sleep    2
    Page Should Contain    Vehicle Details Report
    sleep    5
    Reload Page
    sleep    5
    Selenium2Library.Click Element    ${DownloadTab}
    sleep    2
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    Vehicle Details Report
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ACtionDeleteicon}
    sleep    5
    Selenium2Library.Click Element    ${ActionDeleteYesBTN}
    sleep    2

Download Vehicle detail custom report
    go to    ${Reportspage}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Download Vehicle detail custom report..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${Reportstab}
    sleep    2
    Selenium2Library.Click Element    ${ReportsSearchbtnameTB}
    sleep    2
    Selenium2Library.Input Text    ${ReportsSearchbtnameTB}    Vehicle Details Report
    sleep    1
    Selenium2Library.Click Element    ${ReprotsSearchBTN}
    sleep    5
    Selenium2Library.Click Element    ${DownlaodEditicon}
    sleep    5
    Selenium2Library.Click Element    ${EditReportname}
    Selenium2Library.Input Text    ${EditReportname}    Vehicle Details Report Edit
    Selenium2Library.Click Element    ${EditDescription}
    Selenium2Library.Input Text    ${EditDescription}    Removing first name
    sleep    1
    Selenium2Library.Click Element    ${EditFirstChekbox}
    sleep    1
    Selenium2Library.Click Element    ${EditNextBTN}
    sleep    2
    Selenium2Library.Click Element    ${EditGeneratereport}
    Wait Until Element Is Enabled    ${ReportsSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadTab}
    Wait Until Element Is Enabled    ${DownloadSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadSearchbtnameTB}
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    Vehicle Details Report Edit
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ActionDownloadicon}
    sleep    2
    Page Should Contain    Vehicle Details Report Edit
    sleep    5
    Reload Page
    sleep    5
    Selenium2Library.Click Element    ${DownloadTab}
    sleep    2
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    Vehicle Details Report Edit
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ACtionDeleteicon}
    sleep    5
    Selenium2Library.Click Element    ${ActionDeleteYesBTN}
    sleep    2

Download Vehicle Maintenance standard report
    go to    ${Reportspage}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Download Vehicle Maintenance standard report..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${Reportstab}
    sleep    2
    Selenium2Library.Click Element    ${ReportsSearchbtnameTB}
    sleep    2
    Selenium2Library.Input Text    ${ReportsSearchbtnameTB}    Vehicle Maintenance Report
    sleep    1
    Selenium2Library.Click Element    ${ReprotsSearchBTN}
    sleep    5
    Selenium2Library.Click Element    ${ReportViewBTN}
    sleep    5
    Selenium2Library.Click Element    ${DateRangeDD}
    sleep    1
    Selenium2Library.Click Element    ${DateRangeToday}
    sleep    2
    Selenium2Library.Click Element    ${ReportDownloadBTN}
    Wait Until Element Is Enabled    ${ReportsSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadTab}
    Wait Until Element Is Enabled    ${DownloadSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadSearchbtnameTB}
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    Vehicle Maintenance Report
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ActionDownloadicon}
    sleep    2
    Page Should Contain    Vehicle Maintenance Report
    sleep    5
    Reload Page
    sleep    5
    Selenium2Library.Click Element    ${DownloadTab}
    sleep    2
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    Vehicle Maintenance Report
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ACtionDeleteicon}
    sleep    5
    Selenium2Library.Click Element    ${ActionDeleteYesBTN}
    sleep    2

Download Vehicle Maintenance custom report
    go to    ${Reportspage}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Download Vehicle Maintenance custom report..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${Reportstab}
    sleep    2
    Selenium2Library.Click Element    ${ReportsSearchbtnameTB}
    sleep    2
    Selenium2Library.Input Text    ${ReportsSearchbtnameTB}    Vehicle Maintenance Report
    sleep    1
    Selenium2Library.Click Element    ${ReprotsSearchBTN}
    sleep    5
    Selenium2Library.Click Element    ${DownlaodEditicon}
    sleep    5
    Selenium2Library.Click Element    ${EditReportname}
    Selenium2Library.Input Text    ${EditReportname}    Vehicle Maintenance Report Edit
    Selenium2Library.Click Element    ${EditDescription}
    Selenium2Library.Input Text    ${EditDescription}    Edit Vehicle Maintenance Report
    sleep    2
    Selenium2Library.Click Element    ${DateRangeDD}
    sleep    1
    Selenium2Library.Click Element    ${DateRangeToday}
    sleep    2
    sleep    1
    Selenium2Library.Click Element    ${EditNextBTN}
    sleep    2
    Selenium2Library.Click Element    ${EditGeneratereport}
    Wait Until Element Is Enabled    ${ReportsSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadTab}
    Wait Until Element Is Enabled    ${DownloadSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadSearchbtnameTB}
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    Vehicle Maintenance Report Edit
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ActionDownloadicon}
    sleep    2
    Page Should Contain    Vehicle Maintenance Report Edit
    sleep    5
    Reload Page
    sleep    5
    Selenium2Library.Click Element    ${DownloadTab}
    sleep    2
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    Vehicle Maintenance Report Edit
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ACtionDeleteicon}
    sleep    5
    Selenium2Library.Click Element    ${ActionDeleteYesBTN}
    sleep    2

Download VOR standard report
    go to    ${Reportspage}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Download VOR standard report..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${Reportstab}
    sleep    2
    Selenium2Library.Click Element    ${ReportsSearchbtnameTB}
    sleep    2
    Selenium2Library.Input Text    ${ReportsSearchbtnameTB}    VOR Report
    sleep    1
    Selenium2Library.Click Element    ${ReprotsSearchBTN}
    sleep    5
    Selenium2Library.Click Element    ${ReportViewBTN}
    sleep    5
    Selenium2Library.Click Element    ${DateRangeDD}
    sleep    1
    Selenium2Library.Click Element    ${DateRangeToday}
    sleep    2
    Selenium2Library.Click Element    ${ReportDownloadBTN}
    Wait Until Element Is Enabled    ${ReportsSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadTab}
    Wait Until Element Is Enabled    ${DownloadSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadSearchbtnameTB}
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    VOR Report
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ActionDownloadicon}
    sleep    2
    Page Should Contain    VOR Report
    sleep    5
    Reload Page
    sleep    5
    Selenium2Library.Click Element    ${DownloadTab}
    sleep    2
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    VOR Report
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ACtionDeleteicon}
    sleep    5
    Selenium2Library.Click Element    ${ActionDeleteYesBTN}
    sleep    2

Download VOR custom report
    go to    ${Reportspage}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Download VOR custom report..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${Reportstab}
    sleep    2
    Selenium2Library.Click Element    ${ReportsSearchbtnameTB}
    sleep    2
    Selenium2Library.Input Text    ${ReportsSearchbtnameTB}    VOR Report
    sleep    1
    Selenium2Library.Click Element    ${ReprotsSearchBTN}
    sleep    5
    Selenium2Library.Click Element    ${DownlaodEditicon}
    sleep    5
    Selenium2Library.Click Element    ${EditReportname}
    Selenium2Library.Input Text    ${EditReportname}    VOR Report Edit
    Selenium2Library.Click Element    ${EditDescription}
    Selenium2Library.Input Text    ${EditDescription}    Edit VOR report
    sleep    2
    Selenium2Library.Click Element    ${DateRangeDD}
    sleep    1
    Selenium2Library.Click Element    ${DateRangeToday}
    sleep    2
    sleep    1
    Selenium2Library.Click Element    ${EditNextBTN}
    sleep    2
    Selenium2Library.Click Element    ${EditGeneratereport}
    Wait Until Element Is Enabled    ${ReportsSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadTab}
    Wait Until Element Is Enabled    ${DownloadSearchbtnameTB}    timeout=60
    sleep    2
    Selenium2Library.Click Element    ${DownloadSearchbtnameTB}
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    VOR Report Edit
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ActionDownloadicon}
    sleep    2
    Page Should Contain    VOR Report Edit
    sleep    5
    Reload Page
    sleep    5
    Selenium2Library.Click Element    ${DownloadTab}
    sleep    2
    Selenium2Library.Input Text    ${DownloadSearchbtnameTB}    VOR Report Edit
    sleep    2
    Selenium2Library.Click Element    ${DownloadsSearchBTN}
    sleep    4
    Selenium2Library.Click Element    ${ACtionDeleteicon}
    sleep    5
    Selenium2Library.Click Element    ${ActionDeleteYesBTN}
    sleep    2
