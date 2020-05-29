*** Settings ***
Library           Selenium2Library
Library           openpyxl.reader.excel
Library           SikuliLibrary
Variables         variable.py
Library           AppiumLibrary

*** Test Cases ***
QA - 17
    [Documentation]    QA - 17
    ...    ----------------------------------
    ...    Login into FM user with valid user name and password.
    ...
    ...    -----------------------------------------
    ...    Total Run Time:
    ...    00:00:25
    Log in into Fleet Mastr
    Log Out from Fleet Mastr

QA - 18
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
    Log Out from Fleet Mastr
    Comment    Verify Account on Gmail Account
    Comment    Close All Browsers

QA - 19
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
    Log in into Fleet Mastr
    Filter by “Checked today” on Vehicle page
    Filter by “Not checked today” on Vehicle page
    Filter by “All” on Vehicle page
    Search results using the “All manufacturers” value on Vehicle page
    Search results using the “All models” value on Vehicle page
    Search results using the “All types” value on Vehicle page
    Search results using the “Vehicle status” value on Vehicle page
    Search results using the “All regions” value on Vehicle page
    Create New Vehicle on Vehicle search page
    Clear a search on Vehicle page
    Search Created Vehicle
    Edit Created Vehicle
    Add a document in the “Manage documents” section
    Change the columns selected on the page via the column management pop-up on Vehicle page
    Reset the columns on Vehicle page
    Download/export a report on Vehicle page
    Log Out from Fleet Mastr

QA - 20
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
    Access the vehicle profile page
    Edit Created Vehicle Profile
    Change the columns selected on the page via the column management pop-up on Vehicle Profile page
    Reset the columns on Vehicle Profile page
    Download/export a report on Vehicle Profile page
    Log Out from Fleet Mastr

QA - 21
    [Documentation]    QA - 21
    ...    ----------------------------------
    ...    Verify region report download functionality.
    ...
    ...
    ...    ---------------------------------------
    ...    Total Run Time:
    ...    00:01:55
    Log in into Fleet Mastr
    Region Report Download
    Log Out from Fleet Mastr

QA - 22
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

QA - 23
    [Documentation]    QA - 23
    ...
    ...    --------------------------------
    ...    Verify Send message functionality.
    ...
    ...    -------------------------------------
    ...    Total Run Time:
    ...    00:00:42
    Log in into Fleet Mastr
    Send Message
    Log Out from Fleet Mastr

QA - 24
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
    Show deleted users on Workshops page
    Create New Workshop User
    Clear a search on Workshops page
    Search results using the “Search by company name” value on Workshops page
    Edit user workshop record
    Log Out from Fleet Mastr
    Comment    Verify Account for Workshop User
    Comment    Close All Browsers

QA - 25
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

Planner
    [Documentation]    Planner
    ...    --------------------------
    ...    Export planner for a selected date.
    ...    -------------------------
    ...    Total Run Time:
    ...    00:00:41
    Log in into Fleet Mastr
    Export planner for a selected date
    Log Out from Fleet Mastr

Vehicle planning
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
    Add a vehicle on Vehicle planning page
    Search results using the “All regions” value on Vehicle planning page
    Search results using the “Enter vehicle registration” value on Vehicle planning page
    Search results using the “Select search” value on Vehicle planning page
    Download/export a report on Vehicle planning page
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
    Create a check in App
    Log in into Fleet Mastr
    Search results using the “Regions” value on Vehicle checks page
    Search results using the “Enter vehicle registration” value on Vehicle checks page
    Search results using the “Select check result” value on Vehicle checks page
    Search results using the “Report date” value on Vehicle checks page
    Change the columns selected on the page via the column management pop-up on Vehicle checks page
    Reset the columns on Vehicle checks page
    Download/export a report on Vehicle checks page
    Click in to a vehicle check
    Export vehicle check
    Edit a vehicle check
    Log Out from Fleet Mastr

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
    Open Browser    http://fleetmastr.aecordigitalqa.com    chrome
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

*** Keywords ***
Log in into Fleet Mastr
    Open Browser    http://fleetmastr.aecordigitalqa.com    chrome
    Maximize Browser Window
    Input Password    xpath=/html/body/div[2]/form[1]/div[5]/div/input    aecortest2019@gmail.com
    ${PWS}    Set Variable    srp9662654910
    Input Password    //*[@id="register_password"]    ${PWS}
    Selenium2Library.Click Element    //*[@id="register-submit-btn"]
    Sleep    5

Log Out from Fleet Mastr
    Sleep    2
    Go To    http://fleetmastr.aecordigitalqa.com/auth/logout
    Sleep    2
    Close Browser

Create New User
    [Documentation]    Mail id number to be updated in create new user
    Go To    http://fleetmastr.aecordigitalqa.com/users
    Sleep    5
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Add new user')]
    Sleep    3
    Selenium2Library.Input Text    //*[@id="first_name"]    Sandeep
    Selenium2Library.Input Text    //*[@id="last_name"]    Patel2
    Selenium2Library.Click Element    xpath=(.//span[contains(., 'Select')])[1]
    Selenium2Library.Click Element    xpath=(.//div[contains(., 'Aecor')])[last()]
    comment    Change mail id number
    Selenium2Library.Input Text    //*[@id="email"]    aecortest2019+17@gmail.com
    Selenium2Library.Click Element    xpath=(.//span[contains(., 'Select')])[1]
    Selenium2Library.Click Element    xpath=(.//div[contains(., 'IT')])[last()]
    Selenium2Library.Input Text    //*[@id="job_title"]    QA
    Selenium2Library.Input Text    //*[@id="mobile"]    95556565655
    Selenium2Library.Input Text    //*[@id="landline"]    02655525656
    Selenium2Library.Input Text    //*[@id="engineer_id"]    SNDP241290
    Selenium2Library.Input Text    //*[@id="imei"]    565658 56565658 56565
    Selenium2Library.Click Element    id=select2-chosen-4
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Hardik Shah')])[last()]
    sleep    2
    Selenium2Library.Click Element    id=select2-chosen-5
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Head Office')])[last()]
    Selenium2Library.Click Element    xpath=(.//span[contains(., 'Select')])[last()]
    Selenium2Library.Click Element    xpath=(.//div[contains(., 'Aldermaston')])[last()]
    Selenium2Library.Click Element    //*[@id="addUser"]/div[2]/div/ul/li[2]/a
    sleep    2
    Selenium2Library.Click Element    //*[@id="user_permission"]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div/div/label/div/span
    Selenium2Library.Click Element    //*[@id="user_permission"]/div[1]/div[2]/div/div[2]/div[1]/div[1]/div[1]/div/label/div/span/input
    Selenium2Library.Click Element    //*[@id="addUser"]/div[3]/div/div/button[2]
    sleep    8
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
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Vehicle Search')]/child::span)[last()]
    Sleep    3
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Add vehicle')]
    Sleep    2
    Comment    Change registration number
    Selenium2Library.Input Text    xpath=(.//label[contains(., 'Registration*:')]/following::input[@type='text'])[1]    REGISTRATION35
    Selenium2Library.Click Element    xpath=((.//span[contains(., 'Select')])[1]/following::b)[1]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Ranger Pickup')])[last()]
    Selenium2Library.Input Text    xpath=(.//div[contains(., 'miles')])[last()]/child::input[@type='text']    600
    Selenium2Library.Click Element    xpath=((.//span[contains(., 'Select')])[1]/following::b)[1]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Roadworthy (with defects)')])[last()]
    Selenium2Library.Click Element    //*[@id="select2-chosen-3"]
    Selenium2Library.Click Element    xpath=(.//div[contains(., 'aecortest2019+3@gmail.com')])[last()]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Registration date:')]/following::i)[1]
    Selenium2Library.Click Element    xpath=(.//td[contains(., '24')])[last()]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'First use inspection date:')]/following::i)[1]
    Selenium2Library.Click Element    xpath=(.//td[contains(., '24')])[last()]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Vehicle lease expiry date:')]/following::i)[1]
    Selenium2Library.Click Element    xpath=(.//td[contains(., '24')])[last()]
    Selenium2Library.Input Text    //*[@id="P11D_list_price"]    20000
    Comment    Change chassis number (same as registration number)
    Selenium2Library.Input Text    xpath=(.//label[contains(., 'Chassis number:')]/following::input[@type='text'])[1]    CHASSIS35
    Selenium2Library.Input Text    xpath=(.//label[contains(., 'Contract ID:')]/following::input[@type='text'])[1]    CONTRACTID1
    Selenium2Library.Click Element    //*[@id="s2id_vehicle_division"]/a/span[2]/b
    Selenium2Library.Click Element    //*[@id="select2-results-4"]
    Selenium2Library.Click Element    //*[@id="s2id_vehicle_region"]/a/span[2]/b
    Selenium2Library.Click Element    //*[@id="select2-results-5"]
    Selenium2Library.Click Element    //*[@id="s2id_vehicle_location_id"]/a/span[2]/b
    Selenium2Library.Click Element    //*[@id="select2-results-6"]
    Selenium2Library.Click Element    //*[@id="s2id_vehicle_repair_location_id"]/a/span[2]/b
    Selenium2Library.Click Element    //*[@id="select2-results-7"]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Repair/Maintenance contract expiry date:')]/following::i)[1]
    Selenium2Library.Click Element    xpath=(.//td[contains(., '24')])[last()]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'MOT expiry date:')]/following::i)[1]
    Selenium2Library.Click Element    xpath=(.//td[contains(., '24')])[last()]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Vehicle tax expiry date:')]/following::i)[1]
    Selenium2Library.Click Element    xpath=(.//td[contains(., '24')])[last()]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Annual service inspection date:')]/following::i)[1]
    Selenium2Library.Click Element    xpath=(.//td[contains(., '24')])[last()]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Next service inspection date:')]/following::i)[1]
    Selenium2Library.Click Element    xpath=(.//td[contains(., '24')])[last()]
    Selenium2Library.Click Element    xpath=(.//button[contains(., 'Save')][@type='submit'])[1]
    Sleep    3

Search created vehicle
    Selenium2Library.Click Element    xpath=.//span[contains(normalize-space(.), 'Enter vehicle registration')]
    Comment    Change registration number same as in creation    Create New Vehicle on Vehicle search page
    Selenium2Library.Input Text    xpath=.//span[contains(normalize-space(.), 'Please enter 1 or more character')]/following::input[@type='text']    REGISTRATION35
    Selenium2Library.Click Element    xpath=.//span[contains(., 'REGISTRATION35')]
    Sleep    2
    Selenium2Library.Click Element    xpath=((.//span[contains(., 'REGISTRATION35')])[1]/following::i)[1]
    Sleep    3

Edit created vehicle
    Selenium2Library.Click Element    xpath=((.//td[contains(., 'No')])[last()]/following::i)[1]
    Sleep    3
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Edit vehicle')]
    Sleep    2
    Selenium2Library.Input Text    //*[@id="last_odometer_reading"]    650
    Selenium2Library.Click Element    //*[@id="s2id_status"]/a/span[2]/b
    Selenium2Library.Click Element    //*[@id="select2-results-2"]
    Selenium2Library.Click Element    //*[@id="dt_registration"]/div/div/span/button
    Selenium2Library.Click Element    xpath=.//td[contains(., '25')]
    Selenium2Library.Click Element    //*[@id="dt_first_use_inspection"]/div/div/span/button
    Selenium2Library.Click Element    xpath=(.//td[contains(., '15')])[1]
    Selenium2Library.Click Element    //*[@id="lease_expiry_date"]/div/div/span/button
    Selenium2Library.Click Element    xpath=.//td[contains(., '25')]
    Selenium2Library.Input Text    //*[@id="P11D_list_price"]    21000
    Selenium2Library.Input Text    //*[@id="contract_id"]    CONTRACTID
    Selenium2Library.Click Element    //*[@id="s2id_vehicle_division"]/a/span[2]/b
    Selenium2Library.Click Element    //*[@id="select2-results-5"]
    Selenium2Library.Click Element    //*[@id="s2id_vehicle_region"]/a/span[2]/b
    Selenium2Library.Click Element    //*[@id="select2-results-6"]
    Selenium2Library.Click Element    //*[@id="s2id_vehicle_location_id"]/a/span[2]/b
    Selenium2Library.Click Element    //*[@id="select2-results-7"]
    Selenium2Library.Click Element    //*[@id="s2id_vehicle_repair_location_id"]/a/span[2]/b
    Selenium2Library.Click Element    //*[@id="select2-results-8"]
    Selenium2Library.Click Element    //*[@id="dt_repair_expiry"]/div/div/span/button
    Selenium2Library.Click Element    xpath=.//td[contains(., '25')]
    Selenium2Library.Click Element    //*[@id="dt_mot_expiry"]/div/div/span/button
    Selenium2Library.Click Element    xpath=.//td[contains(., '25')]
    Selenium2Library.Click Element    //*[@id="dt_tax_expiry"]/div/div/span/button
    Selenium2Library.Click Element    xpath=.//td[contains(., '25')]
    Selenium2Library.Click Element    //*[@id="dt_annual_service_inspection"]/div/div/span/button
    Selenium2Library.Click Element    xpath=.//td[contains(., '25')]
    Selenium2Library.Click Element    //*[@id="dt_next_service_inspection"]/div/div/span/button
    Selenium2Library.Click Element    xpath=.//td[contains(., '25')]
    Choose File    xpath=.//span[contains(normalize-space(.), 'Add files')]/child::input[@type='file']    C:\\Users\\aceor_indra\\Pictures\\Saved Pictures\\download.jpg
    Sleep    5
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Upload')]
    Wait Until Page Does Not Contain    Document(s) uploaded successfully.
    Sleep    5
    Page should contain    download.jpg
    Sleep    5
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Save')][@type='submit']
    Sleep    3
    Page should contain    Data has been saved successfully.
    Sleep    3

Create New Vehicle Profile
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Vehicle Profiles')]/child::span)[last()]
    Sleep    5
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Add new vehicle profile')]
    Sleep    3
    Selenium2Library.Input Text    xpath=(.//label[contains(., 'Type*:')]/following::input[@type='text'])[1]    Type test
    Selenium2Library.Click Element    //*[@id="select2-chosen-1"]
    Selenium2Library.Click Element    xpath=(.//div[contains(., 'HGV')])[13]
    Selenium2Library.Input Text    xpath=(.//label[contains(., 'Manufacturer*:')]/following::input[@type='text'])[1]    Manufacturer
    Selenium2Library.Input Text    xpath=(.//label[contains(., 'Model*:')]/following::input[@type='text'])[1]    Model
    Selenium2Library.Input Text    xpath=(.//label[contains(., 'Bodybuilder:')]/following::input[@type='text'])[1]    Bodybuilder
    Selenium2Library.Click Element    //*[@id="select2-chosen-3"]
    Selenium2Library.Click Element    xpath=(.//div[contains(., 'Diesel')])[13]
    Selenium2Library.Input Text    xpath=(.//label[contains(normalize-space(.), 'Gross vehicle weight:')]/following::input[@type='text'])[1]    Weight
    Selenium2Library.Input Text    xpath=(.//label[contains(normalize-space(.), 'Tyre size drive:')]/following::input[@type='text'])[1]    Sdrive
    Selenium2Library.Input Text    xpath=(.//label[contains(normalize-space(.), 'Tyre size steer:')]/following::input[@type='text'])[1]    Ssteer
    Selenium2Library.Input Text    xpath=(.//label[contains(normalize-space(.), 'Type pressure drive:')]/following::input[@type='text'])[1]    Pdrive
    Selenium2Library.Input Text    xpath=(.//label[contains(normalize-space(.), 'Type pressure steer:')]/following::input[@type='text'])[1]    Psteer
    Selenium2Library.Input Text    xpath=(.//label[contains(normalize-space(.), 'Nut size:')]/following::input[@type='text'])[1]    Nut size
    Selenium2Library.Input Text    xpath=(.//label[contains(., 'Re-torque:')]/following::input[@type='text'])[1]    Re-torque
    Selenium2Library.Input Text    xpath=(.//label[contains(normalize-space(.), 'Length (mm):')]/following::input[@type='text'])[1]    50
    Selenium2Library.Input Text    xpath=(.//label[contains(normalize-space(.), 'Width (mm):')]/following::input[@type='text'])[1]    50
    Selenium2Library.Input Text    xpath=(.//label[contains(normalize-space(.), 'Height (mm):')]/following::input[@type='text'])[1]    50
    Selenium2Library.Click Element    //*[@id="select2-chosen-4"]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Post-Euro VI - AdBlue required')])[last()]
    Selenium2Library.Input Text    xpath=(.//label[contains(normalize-space(.), 'Engine size (cc)*:')]/following::input[@type='text'])[1]    100
    Selenium2Library.Click Element    //*[@id="select2-chosen-5"]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), '5W 30')])[last()]
    Selenium2Library.Input Text    //*[@id="co2"]    20
    Selenium2Library.Input Text    xpath=(.//label[contains(normalize-space(.), 'HMRC CO2(%)*:')]/following::input[@type='text'])[1]    10
    Selenium2Library.Input Text    xpath=(.//label[contains(normalize-space(.), 'Service inspection interval:')]/following::input[@type='text'])[1]    Service inspection interval
    Selenium2Library.Click Element    xpath=(.//button[contains(., 'Save')][@type='submit'])[1]
    Sleep    3
    Page should contain    Data has been saved successfully.
    Sleep    2

Search Created Vehicle Profile
    Go to    http://fleetmastr.aecordigitalqa.com/profiles
    Sleep    3
    Selenium2Library.Click Element    //*[@id="select2-chosen-1"]
    Selenium2Library.Input Text    //*[@id="s2id_autogen1_search"]    Type Test
    Selenium2Library.Click Element    xpath=(.//span[contains(normalize-space(.), 'Type test')])[last()]
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')][@type='submit'])[1]
    Sleep    3

Edit Created Vehicle Profile
    Selenium2Library.Click Element    //*[@id="edit-vehicle-btn"]
    Sleep    3
    Selenium2Library.Input Text    //*[@id="vehicle_type"]    Typetest 1
    Selenium2Library.Click Element    //*[@id="select2-chosen-2"]
    Selenium2Library.Click Element    xpath=(.//div[contains(., 'Non-HGV')])[last()]
    Selenium2Library.Input Text    //*[@id="manufacturer"]    Manufacturer1
    Selenium2Library.Input Text    //*[@id="model"]    Model1
    Selenium2Library.Input Text    //*[@id="body_builder"]    Bodybuilder1
    Selenium2Library.Click Element    xpath=.//span[contains(., 'Diesel')]
    Selenium2Library.Click Element    xpath=(.//div[contains(., 'Hybrid/Diesel')])[last()]
    Selenium2Library.Input Text    //*[@id="gross_vehicle_weight"]    Weight1
    Selenium2Library.Input Text    //*[@id="tyre_size_drive"]    Sdrive1
    Selenium2Library.Input Text    //*[@id="tyre_size_steer"]    Ssteer1
    Selenium2Library.Input Text    //*[@id="tyre_pressure_drive"]    Pdrive1
    Selenium2Library.Input Text    //*[@id="tyre_pressure_steer"]    Psteer1
    Selenium2Library.Input Text    //*[@id="nut_size"]    Nut size1
    Selenium2Library.Input Text    //*[@id="re_torque"]    Re-torque1
    Selenium2Library.Input Text    //*[@id="length"]    501
    Selenium2Library.Input Text    //*[@id="width"]    501
    Selenium2Library.Input Text    //*[@id="height"]    501
    Selenium2Library.Click Element    //*[@id="select2-chosen-5"]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Pre-Euro VI - AdBlue not required')])[last()]
    Selenium2Library.Click Element    //*[@id="select2-chosen-6"]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), '0W 30')])[last()]
    Selenium2Library.Input Text    //*[@id="co2"]    201
    Selenium2Library.Input Text    //*[@id="service_inspection_interval"]    Service inspection interval1
    Choose file    xpath=(.//span[contains(normalize-space(.), 'Select fileChange')])[1]/child::input[@type='file']    C:\\Users\\aceor_indra\\Pictures\\Saved Pictures\\download.jpg
    Sleep    2
    Choose file    xpath=(.//span[contains(normalize-space(.), 'Select fileChange')])[2]/child::input[@type='file']    C:\\Users\\aceor_indra\\Pictures\\Saved Pictures\\download.jpg
    Sleep    2
    Choose file    xpath=(.//span[contains(normalize-space(.), 'Select fileChange')])[3]/child::input[@type='file']    C:\\Users\\aceor_indra\\Pictures\\Saved Pictures\\download.jpg
    Sleep    2
    Choose file    xpath=(.//span[contains(normalize-space(.), 'Select fileChange')])[last()]/child::input[@type='file']    C:\\Users\\aceor_indra\\Pictures\\Saved Pictures\\download.jpg
    Sleep    2
    Selenium2Library.Click Element    //*[@id="submit-button"]
    Sleep    3
    Page should contain    Data has been saved successfully.

Region Report Download
    Go to    http://fleetmastr.aecordigitalqa.com/reports
    Sleep    5
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Download current month')]
    Sleep    5
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Download previous month')]
    Sleep    5
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Download current week')])[1]
    Sleep    5
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Download previous week')])[1]
    Sleep    5
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Download current week')])[2]
    Sleep    5
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Download previous week')])[2]
    sleep    5
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Download current week')])[3]
    sleep    5
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Download previous week')])[3]
    Sleep    5
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Download current week')])[4]
    Sleep    5
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Download previous week')])[4]
    Sleep    5
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Download current week')])[5]
    Sleep    5
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Download previous week')])[5]
    Sleep    5
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Download current week')])[6]
    sleep    5
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Download previous week')])[6]
    sleep    5
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Download current week')])[last()]
    sleep    5
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Download previous week')])[last()]
    sleep    5

Send Message
    Go To    http://fleetmastr.aecordigitalqa.com/messages
    Sleep    5
    Selenium2Library.Click Element    //*[@id="messages-page"]/div[3]/div/div/div[2]/div/ul/li[3]/a
    Selenium2Library.Click Element    xpath=(.//button[contains(normalize-space(.), 'No template selected')][@type='button'])[1]
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Video test')])[2]
    sleep    2
    Selenium2Library.Click Element    xpath=((.//label[contains(normalize-space(.), 'Select recipients:')])[1]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    //*[@id="messages-form"]/div/div[2]/div[5]/div/div/div/button[1]
    sleep    2
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Yes')][@type='button']
    Wait Until Page Does Not Contain    Message has been sent!

Create New Group
    Go to    http://fleetmastr.aecordigitalqa.com/messages
    Sleep    5
    Selenium2Library.Input Text    xpath=.//input[@placeholder='Enter new group name'][@type='text']    Test Group
    Selenium2Library.Click Element    xpath=((.//button[contains(normalize-space(.), 'Clear filter')])[1]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//button[contains(., 'Add')][@type='button'])[1]
    Sleep    3
    Page should contain    The new group has been added.
    Sleep    3

Edit Created Group
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Test Group')]
    Sleep    2
    Selenium2Library.Input Text    xpath=.//input[@placeholder='Enter new group name'][@type='text']    Test Group 1
    Selenium2Library.Click Element    xpath=(.//button[contains(., 'Update')][@type='button'])[1]
    Sleep    3
    Page should contain    The group has been updated.
    Sleep    3

Delete Created Group
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Test Group 1')]
    Sleep    2
    Selenium2Library.Click Element    xpath=(.//button[contains(., 'Delete')][@type='button'])[1]
    Sleep    2
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Yes')][@type='button']
    Sleep    3
    Page Should Contain    The group has been deleted.
    Sleep    3

Create New Workshop User
    Go to    http://fleetmastr.aecordigitalqa.com/workshops
    Sleep    5
    Selenium2Library.Click Element    xpath=/html/body/div[2]/div[2]/div/section/div[3]/div/div/div[1]/div[3]/a[2]
    Sleep    3
    Selenium2Library.Input Text    //*[@id="first_name"]    Sandeep
    Selenium2Library.Input Text    //*[@id="last_name"]    Patel
    Selenium2Library.Click Element    xpath=.//span[contains(., 'Select')]
    Selenium2Library.Click Element    xpath=(.//div[contains(., 'Aecor1')])[last()]
    comment    Change mail id number
    Selenium2Library.Input Text    //*[@id="email"]    aecortest2019+66@gmail.com
    Selenium2Library.Input Text    //*[@id="mobile"]    9662654910
    Selenium2Library.Input Text    //*[@id="landline"]    9925838205
    Selenium2Library.Input Text    //*[@id="address1"]    Menpura
    Selenium2Library.Input Text    //*[@id="address2"]    Dabhoi
    Selenium2Library.Input Text    //*[@id="town_city"]    Vadodara
    Selenium2Library.Input Text    //*[@id="postcode"]    391220
    Selenium2Library.Click Element    //*[@id="addUser"]/div[3]/div/div/button[2]
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
    Go To    http://fleetmastr.aecordigitalqa.com/vehicles
    Sleep    3
    Selenium2Library.Click Element    //*[@id="vehicle-filter-today"]
    Sleep    2
    ${checked}    Selenium2Library.Get Text    xpath=(.//span[contains(normalize-space(.), 'Checked today')])[last()]
    Should Be Equal As Strings    ${checked}    Checked today
    Sleep    3

Filter by “Not checked today” on Vehicle page
    Selenium2Library.Click Element    xpath=.//span[contains(normalize-space(.), 'Not checked today')][@type='button']
    Sleep    2
    ${notchecked}    Selenium2Library.Get Text    xpath=(.//span[contains(normalize-space(.), 'Not checked today')])[last()]
    Should Be Equal As Strings    ${notchecked}    Not checked today
    Sleep    3

Filter by “All” on Vehicle page
    Selenium2Library.Click Element    xpath=.//span[contains(., 'All')][@type='button']
    Sleep    2
    ${all}    Selenium2Library.Get Text    xpath=(.//span[contains(., 'All')])[last()]
    Should Be Equal As Strings    ${all}    All
    Sleep    3

Search results using the “All manufacturers” value on Vehicle page
    Go To    http://fleetmastr.aecordigitalqa.com/vehicles
    Sleep    3
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Advanced search')]
    Sleep    3
    Selenium2Library.Click Element    xpath=.//span[contains(normalize-space(.), 'All manufacturers')]
    Selenium2Library.Click Element    xpath=(.//div[contains(., 'Manufacturer1')])[last()]
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')][@type='submit'])[last()]
    Sleep    3
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')])[4]
    Sleep    3

Search results using the “All models” value on Vehicle page
    Selenium2Library.Click Element    xpath=.//span[contains(normalize-space(.), 'All models')]
    Selenium2Library.Click Element    xpath=(.//div[contains(., 'Model1')])[last()]
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')][@type='submit'])[last()]
    Sleep    3
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')])[4]
    Sleep    3

Search results using the “All types” value on Vehicle page
    Selenium2Library.Click Element    xpath=.//span[contains(normalize-space(.), 'All types')]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Typetest 1')])[2]
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')][@type='submit'])[last()]
    Sleep    3
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')])[4]
    Sleep    3

Search results using the “Vehicle status” value on Vehicle page
    Selenium2Library.Click Element    xpath=.//span[contains(normalize-space(.), 'Vehicle status')]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Roadworthy (with defects)')])[last()]
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')][@type='submit'])[last()]
    Sleep    3
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')])[4]
    Sleep    3

Search results using the “All regions” value on Vehicle page
    Selenium2Library.Click Element    xpath=.//span[contains(normalize-space(.), 'All regions')]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Head Office')])[last()]
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')][@type='submit'])[last()]
    Sleep    3
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')])[4]
    Sleep    3

Clear a search on Vehicle page
    Go To    http://fleetmastr.aecordigitalqa.com/vehicles
    Sleep    3
    Comment    Change registration number same as in creation    Create New Vehicle on Vehicle search page
    Selenium2Library.Click Element    xpath=.//span[contains(normalize-space(.), 'Enter vehicle registration')]
    Selenium2Library.Input Text    xpath=.//span[contains(normalize-space(.), 'Please enter 1 or more character')]/following::input[@type='text']    REGISTRATION33
    Selenium2Library.Click Element    xpath=.//span[contains(., 'REGISTRATION33')]
    Sleep    2
    Selenium2Library.Click Element    xpath=((.//span[contains(., 'REGISTRATION33')])[1]/following::i)[1]
    Sleep    2
    Selenium2Library.Click Element    xpath=((.//span[contains(., 'REGISTRATION33')])[1]/following::i)[2]
    Sleep    2

Add a document in the “Manage documents” section
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Manage documents')]
    Sleep    2
    Choose file    xpath=(.//div[contains(normalize-space(.), '+Add file Click or drop your file here to upload')])[last()]/child::input[@type='file']    C:\\Users\\aceor_indra\\Pictures\\Saved Pictures\\download.jpg
    Sleep    10
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Upload')]
    Wait Until Page Does Not Contain    Document(s) uploaded successfully.
    Sleep    3
    Selenium2Library.Click Element    //*[@id="portlet-documents"]/div[1]/a/i
    Sleep    5
    Page should contain    download.jpg
    Sleep    2

Change the columns selected on the page via the column management pop-up on Vehicle page
    Go to    http://fleetmastr.aecordigitalqa.com/vehicles
    Sleep    5
    Selenium2Library.Click Element    xpath=((.//div[contains(normalize-space(.), 'Reset columns Add vehicle')])[last()]/child::span)[1]
    Sleep    2
    Selenium2Library.Click Element    xpath=(.//label[contains(., 'Manufacturer')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(., 'Model')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Vehicle Status')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Checked Today')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Created By')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Created Date')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=.//a[contains(., 'Submit')]
    Sleep    2
    Page Should Contain    Created By
    Sleep    2

Reset the columns on Vehicle page
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Reset columns')]
    Sleep    2
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Yes')][@type='button']
    Sleep    2
    Page Should Contain    Model
    Sleep    2

Download/export a report on Vehicle page
    Selenium2Library.Click Element    xpath=((.//div[contains(normalize-space(.), 'Reset columns Add vehicle')])[last()]/child::span)[last()]
    Sleep    5

Clear a search on Vehicle Profile page
    Go to    http://fleetmastr.aecordigitalqa.com/profiles
    Sleep    3
    Selenium2Library.Click Element    //*[@id="select2-chosen-1"]
    Selenium2Library.Input Text    //*[@id="s2id_autogen1_search"]    Type Test
    Selenium2Library.Click Element    xpath=(.//span[contains(normalize-space(.), 'Type test')])[last()]
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')][@type='submit'])[1]
    Sleep    3
    Page Should contain    Type test
    Selenium2Library.Click Element    //*[@id="defects-filter-form"]/div/div/div/div[2]/button[2]
    Sleep    3

Access the vehicle profile page
    Selenium2Library.Click Element    xpath=((.//span[contains(., 'Active')])[1]/following::i)[1]
    Sleep    5

Change the columns selected on the page via the column management pop-up on Vehicle Profile page
    Go to    http://fleetmastr.aecordigitalqa.com/profiles
    Sleep    5
    Selenium2Library.Click Element    xpath=((.//div[contains(normalize-space(.), 'Reset columns Add new vehicle profile')])[last()]/child::span)[1]
    Sleep    2
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Fuel Type')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Type of Engine')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Oil Grade')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Profile Status')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Gross Vehicle Weight')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Body Builder')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=.//label[contains(., 'CO2')]/following::input[@type='checkbox']
    Selenium2Library.Click Element    xpath=.//a[contains(., 'Submit')]
    Sleep    2
    Page Should Contain    Gross Vehicle Weight
    Sleep    2

Reset the columns on Vehicle Profile page
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Reset columns')]
    Sleep    2
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Yes')][@type='button']
    Sleep    2
    Page Should Contain    Type of Engine

Download/export a report on Vehicle Profile page
    Selenium2Library.Click Element    xpath=((.//div[contains(normalize-space(.), 'Reset columns Add new vehicle profile')])[last()]/child::span)[last()]
    Sleep    5

Create Standard Template
    Go to    http://fleetmastr.aecordigitalqa.com/messages
    Sleep    5
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Manage templates')]
    Sleep    3
    Selenium2Library.Input Text    xpath=.//input[@placeholder='Enter new template name'][@type='text']    Test Standard
    Selenium2Library.Click Element    //*[@id="messageOpenChoiceEditor_ifr"]
    Press Key    //*[@id="messageOpenChoiceEditor_ifr"]    \\13
    Press Key    //*[@id="messageOpenChoiceEditor_ifr"]    Test Message
    Selenium2Library.Click Element    xpath=((.//button[contains(normalize-space(.), 'Clear filter')])[last()]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    //*[@id="template-form"]/div[1]/div[10]/div/div/div/label[2]/div/div/span
    Selenium2Library.Click Element    xpath=(.//button[contains(., 'Add')][@type='button'])[last()]
    Wait Until Page Does Not Contain    The new template has been added.
    Sleep    3

Edit Standard Template
    Go To    http://fleetmastr.aecordigitalqa.com/messages
    Sleep    5
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Manage templates')]
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Test Standard')])[1]
    Sleep    3
    Selenium2Library.Input Text    xpath=.//input[@placeholder='Enter new template name'][@type='text']    Test Standard 1
    Selenium2Library.Click Element    //*[@id="messageOpenChoiceEditor_ifr"]
    Press Key    //*[@id="messageOpenChoiceEditor_ifr"]    \\13
    Press Key    //*[@id="messageOpenChoiceEditor_ifr"]    Test Message 1
    Selenium2Library.Click Element    //*[@id="accordion5"]/div/div[1]/h4/div/span/input
    Selenium2Library.Click Element    //*[@id="template-form"]/div[1]/div[10]/div/div/div/label[1]/div/div/span
    Selenium2Library.Click Element    xpath=(.//button[contains(., 'Update')][@type='button'])[last()]
    Wait Until Page Does Not Contain    The template has been updated.
    Sleep    3

Delete Standard Template
    Go To    http://fleetmastr.aecordigitalqa.com/messages
    Sleep    5
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Manage templates')]
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Test Standard 1')])[1]
    Sleep    3
    Selenium2Library.Click Element    xpath=(.//button[contains(., 'Delete')][@type='button'])[last()]
    Sleep    2
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Yes')][@type='button']
    Wait Until Page Does Not Contain    The template has been deleted.
    Sleep    3

Create MCQ Template
    Go To    http://fleetmastr.aecordigitalqa.com/messages
    Sleep    5
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Manage templates')]
    Selenium2Library.Input Text    xpath=.//input[@placeholder='Enter new template name'][@type='text']    Test MCQ
    Selenium2Library.Click Element    xpath=.//span[contains(normalize-space(.), 'Standard message')]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Multiple choice questionnaire')])[last()]
    Selenium2Library.Input Text    xpath=(.//textarea[@placeholder='Enter message details'])[1]    Test Message
    Selenium2Library.Click Element    //*[@id="editor0_ifr"]
    Press Key    //*[@id="editor0_ifr"]    \\13
    Press Key    //*[@id="editor0_ifr"]    MCQ 1
    Selenium2Library.Input Text    //*[@id="template-form"]/div[1]/div[5]/div/div/div/div[2]/div/input    Answer 1
    Selenium2Library.Input Text    //*[@id="template-form"]/div[1]/div[5]/div/div/div/div[3]/div/input    Answer 2
    Selenium2Library.Click Element    xpath=.//button[contains(normalize-space(.), 'Add next question')][@type='button']
    Sleep    1
    Selenium2Library.Click Element    //*[@id="editor1_ifr"]
    Press Key    //*[@id="editor1_ifr"]    \\13
    Press Key    //*[@id="editor1_ifr"]    MCQ 2
    Selenium2Library.Input Text    //*[@id="template-form"]/div[1]/div[5]/div/div/div[2]/div[2]/div/input    Answer 3
    Selenium2Library.Input Text    //*[@id="template-form"]/div[1]/div[5]/div/div/div[2]/div[3]/div/input    Answer 4
    Selenium2Library.Click Element    xpath=((.//button[contains(normalize-space(.), 'Clear filter')])[last()]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    //*[@id="template-form"]/div[1]/div[10]/div/div/div/label[2]/div/div/span
    Selenium2Library.Click Element    xpath=(.//button[contains(., 'Add')][@type='button'])[last()]
    Wait Until Page Does Not Contain    The new template has been added.
    Sleep    3

Edit MCQ Template
    Go To    http://fleetmastr.aecordigitalqa.com/messages
    Sleep    5
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Manage templates')]
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Test MCQ')])[1]
    Sleep    3
    Selenium2Library.Input Text    xpath=.//input[@placeholder='Enter new template name'][@type='text']    Test MCQ 1
    Selenium2Library.Input Text    xpath=(.//textarea[@placeholder='Enter message details'])[1]    Test Message 1
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Remove question')])[last()]
    Sleep    2
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Add another answer')]
    Selenium2Library.Input Text    //*[@id="template-form"]/div[1]/div[5]/div/div/div/div[4]/div/input    Answer 3
    Selenium2Library.Click Element    //*[@id="template-form"]/div[1]/div[5]/div/div/div/div[4]/div/span[1]/div/span/input
    Selenium2Library.Click Element    //*[@id="accordion5"]/div/div[1]/h4/div/span/input
    Selenium2Library.Click Element    xpath=((.//button[contains(normalize-space(.), 'Clear filter')])[last()]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    //*[@id="template-form"]/div[1]/div[10]/div/div/div/label[1]/div/div/span
    Selenium2Library.Click Element    xpath=(.//button[contains(., 'Update')][@type='button'])[last()]
    Wait Until Page Does Not Contain    The template has been updated.
    Sleep    3

Delete MCQ Template
    Go To    http://fleetmastr.aecordigitalqa.com/messages
    Sleep    5
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Manage templates')]
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Test MCQ 1')])[1]
    Sleep    2
    Selenium2Library.Click Element    xpath=(.//button[contains(., 'Delete')][@type='button'])[last()]
    Sleep    1
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Yes')][@type='button']
    Wait Until Page Does Not Contain    The template has been deleted.
    Sleep    3

Create Q&A Template
    Go To    http://fleetmastr.aecordigitalqa.com/messages
    Sleep    5
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Manage templates')]
    Selenium2Library.Input Text    xpath=.//input[@placeholder='Enter new template name'][@type='text']    Test Q&A
    Selenium2Library.Click Element    xpath=.//span[contains(normalize-space(.), 'Standard message')]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Q&A survey')])[last()]
    sleep    1
    Selenium2Library.Input Text    xpath=(.//textarea[@placeholder='Enter message details'])[1]    Test Message Q&A
    Selenium2Library.Click Element    //*[@id="openChoiceEditor0_ifr"]
    Press Key    //*[@id="openChoiceEditor0_ifr"]    \\13
    Press Key    //*[@id="openChoiceEditor0_ifr"]    Test Q&A 1
    Selenium2Library.Click Element    xpath=.//button[contains(normalize-space(.), 'Add next question')][@type='button']
    Selenium2Library.Click Element    //*[@id="openChoiceEditor1_ifr"]
    Press Key    //*[@id="openChoiceEditor1_ifr"]    \\13
    Press Key    //*[@id="openChoiceEditor1_ifr"]    Test Q&A 2
    Selenium2Library.Click Element    xpath=((.//button[contains(normalize-space(.), 'Clear filter')])[last()]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    //*[@id="template-form"]/div[1]/div[10]/div/div/div/label[2]/div/div/span
    Sleep    1
    Selenium2Library.Click Element    xpath=(.//button[contains(., 'Add')][@type='button'])[last()]
    Wait Until Page Does Not Contain    The new template has been added.
    Sleep    5

Edit Q&A Template
    Go To    http://fleetmastr.aecordigitalqa.com/messages
    Sleep    5
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Manage templates')]
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Test Q&A')])[1]
    Sleep    3
    Selenium2Library.Input Text    xpath=.//input[@placeholder='Enter new template name'][@type='text']    Test Q&A 1
    Selenium2Library.Input Text    xpath=(.//textarea[@placeholder='Enter message details'])[1]    Test Message Q&A 1
    Selenium2Library.Click Element    //*[@id="openChoiceEditor0_ifr"]
    Press Key    //*[@id="openChoiceEditor0_ifr"]    \\13
    Press Key    //*[@id="openChoiceEditor0_ifr"]    Test Q&A
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Remove question')])[last()]
    Comment    Selenium2Library.Click Element    xpath=(.//span[contains(., '(6)')]/following::input[@type='checkbox'])[29]
    Selenium2Library.Click Element    //*[@id="template-form"]/div[1]/div[10]/div/div/div/label[1]/div/div/span
    Selenium2Library.Click Element    xpath=(.//button[contains(., 'Update')][@type='button'])[last()]
    Wait Until Page Does Not Contain    The template has been updated.
    Sleep    3

Delete Q&A Template
    Go To    http://fleetmastr.aecordigitalqa.com/messages
    Sleep    5
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Manage templates')]
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'Test Q&A 1')])[1]
    Sleep    2
    Selenium2Library.Click Element    xpath=(.//button[contains(., 'Delete')][@type='button'])[last()]
    Sleep    1
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Yes')][@type='button']
    Wait Until Page Does Not Contain    The template has been deleted.
    Sleep    3

Verify clicks in Vehicle Fleet Statistics
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="roadworthy-vehicles-count"]
    Sleep    5
    Page should contain    Vehicle Search
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="vehicles-with-defects-count"]
    Sleep    5
    Page should contain    Vehicle Search
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="vor-vehicle-counts"]
    Sleep    5
    Page should contain    Vehicle Search
    Sleep    3

Verify clicks in Today's Vehicle Checks
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="total-checks-count"]
    Sleep    5
    Page should contain    Checked today
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="total-unchecks-count"]
    Sleep    5
    Page should contain    Not checked today
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="roadworthy-checks-count"]
    Sleep    5
    Page should contain    Roadworthy
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="safe-to-operate-checks-count"]
    Sleep    5
    Page should contain    Safe to operate
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/div[4]/div/div/div[5]/a/div/div[2]/div/div/div
    Sleep    5
    Page should contain    Unsafe to operate
    Sleep    3

Filter graph for Vehicles Off Road
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="select2-chosen-1"]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Head Office')])[last()]
    Sleep    2
    Page should contain    Head Office
    Sleep    3

Filter Upcoming Inspections
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="select2-chosen-2"]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Head Office')])[last()]
    Sleep    2
    Page should contain    Head Office
    Sleep    3

Verify clicks in Upcoming Inspections
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[1]/div/div[1]/div[1]/div/div[2]/div/div[1]/a/div/h4
    Sleep    5
    Page should contain    Annual service
    Page should contain    Date passed
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[1]/div/div[1]/div[1]/div/div[2]/div/div[2]/a/div/h4
    Sleep    5
    Page should contain    Next service
    Page should contain    Date passed
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[1]/div/div[1]/div[1]/div/div[2]/div/div[3]/a/div/h4
    Sleep    5
    Page should contain    Tacho calibration
    Page should contain    Date passed
    Sleep    3
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[1]/div/div[1]/div[2]/div/div[2]/div/div[1]/a/div/h4
    Sleep    5
    Page should contain    Annual service
    Page should contain    Next 7 days
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[1]/div/div[1]/div[2]/div/div[2]/div/div[2]/a/div/h4
    Sleep    5
    Page should contain    Next service
    Page should contain    Next 7 days
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[1]/div/div[1]/div[2]/div/div[2]/div/div[3]/a/div/h4
    Sleep    5
    Page should contain    Tacho calibration
    Page should contain    Next 7 days
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[1]/div/div[1]/div[3]/div/div[2]/div/div[1]/a/div/h4
    Sleep    5
    Page should contain    Annual service
    Page should contain    8-14 days time
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[1]/div/div[1]/div[3]/div/div[2]/div/div[2]/a/div/h4
    Sleep    5
    Page should contain    Next service
    Page should contain    8-14 days time
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[1]/div/div[1]/div[3]/div/div[2]/div/div[3]/a/div/h4
    Sleep    5
    Page should contain    Tacho calibration
    Page should contain    8-14 days time
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[1]/div/div[1]/div[4]/div/div[2]/div/div[1]/a/div/h4
    Sleep    5
    Page should contain    Annual service
    Page should contain    15-30 days time
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[1]/div/div[1]/div[4]/div/div[2]/div/div[2]/a/div/h4
    Sleep    5
    Page should contain    Next service
    Page should contain    15-30 days time
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[1]/div/div[1]/div[4]/div/div[2]/div/div[3]/a/div/h4
    Sleep    5
    Page should contain    Tacho calibration
    Page should contain    15-30 days time
    Sleep    3

Filter Upcoming Expires
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="select2-chosen-3"]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Head Office')])[last()]
    Sleep    2
    Page should contain    Head Office
    Sleep    3

Verify clicks in Upcoming Expires
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[2]/div/div[1]/div[1]/div/div[2]/div/div[1]/a/div/h4
    Sleep    5
    Page should contain    Maintenance expiry
    Page should contain    Date passed
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[2]/div/div[1]/div[1]/div/div[2]/div/div[2]/a/div/h4
    Sleep    5
    Page should contain    MOT expiry
    Page should contain    Date passed
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[2]/div/div[1]/div[1]/div/div[2]/div/div[3]/a/div/h4
    Sleep    5
    Page should contain    Tax expiry
    Page should contain    Date passed
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[2]/div/div[1]/div[2]/div/div[2]/div/div[1]/a/div/h4
    Sleep    5
    Page should contain    Maintenance expiry
    Page should contain    Next 7 days
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[2]/div/div[1]/div[2]/div/div[2]/div/div[2]/a/div/h4
    Sleep    5
    Page should contain    MOT expiry
    Page should contain    Next 7 days
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[2]/div/div[1]/div[2]/div/div[2]/div/div[3]/a/div/h4
    Sleep    5
    Page should contain    Tax expiry
    Page should contain    Next 7 days
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[2]/div/div[1]/div[3]/div/div[2]/div/div[1]/a/div/h4
    Sleep    5
    Page should contain    Maintenance expiry
    Page should contain    8-14 days time
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[2]/div/div[1]/div[3]/div/div[2]/div/div[2]/a/div/h4
    Sleep    5
    Page should contain    MOT expiry
    Page should contain    8-14 days time
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[2]/div/div[1]/div[3]/div/div[2]/div/div[3]/a/div/h4
    Sleep    5
    Page should contain    Tax expiry
    Page should contain    8-14 days time
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[2]/div/div[1]/div[4]/div/div[2]/div/div[1]/a/div/h4
    Sleep    5
    Page should contain    Maintenance expiry
    Page should contain    15-30 days time
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[2]/div/div[1]/div[4]/div/div[2]/div/div[2]/a/div/h4
    Sleep    5
    Page should contain    MOT expiry
    Page should contain    15-30 days time
    Sleep    2
    Go to    http://fleetmastr.aecordigitalqa.com/home
    Sleep    5
    Selenium2Library.Click Element    //*[@id="dashboard-page"]/section[2]/div/div[1]/div[4]/div/div[2]/div/div[3]/a/div/h4
    Sleep    5
    Page should contain    Tax expiry
    Page should contain    15-30 days time
    Sleep    3

Export planner for a selected date
    Go to    http://fleetmastr.aecordigitalqa.com/planner
    Sleep    5
    Selenium2Library.Click Element    xpath=((.//td[contains(., '2')])[7]/following::td)[10]
    Sleep    2
    Page should contain    05 March 2019
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Export planner')]
    Sleep    5

Search results using the “All regions” value on Vehicle planning page
    Go to    http://fleetmastr.aecordigitalqa.com/vehicles/planning
    Sleep    5
    Selenium2Library.Click Element    //*[@id="select2-chosen-1"]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Head Office')])[last()]
    Sleep    2
    Selenium2Library.Click Element    xpath=(.//select[contains(normalize-space(.), 'Annual serviceMaintenance expiryMOT expiryNext serviceTacho calibrationTax expiry')]/following::i)[1]
    Sleep    3
    ${Head Office}    Selenium2Library.Get Text    xpath=(.//span[contains(normalize-space(.), 'Head Office')])[3]
    Should Be Equal As Strings    ${Head Office}    Head Office
    Sleep    3
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')])[2]
    ${all region}    Selenium2Library.Get Text    xpath=(.//span[contains(normalize-space(.), 'All Regions')])[last()]
    Should Be Equal As Strings    ${all region}    All Regions
    Sleep    3

Search results using the “Enter vehicle registration” value on Vehicle planning page
    Selenium2Library.Click Element    //*[@id="select2-chosen-4"]
    Comment    Change registration number as in creation
    Selenium2Library.Input Text    //*[@id="s2id_autogen4_search"]    REGISTRATION52
    Selenium2Library.Click Element    xpath=.//span[contains(., 'REGISTRATION52')]
    Sleep    2
    Selenium2Library.Click Element    xpath=.//button[contains(., '')][@type='submit']
    Sleep    3
    Selenium2Library.Click Element    xpath=(.//select[contains(normalize-space(.), 'Annual serviceMaintenance expiryMOT expiryNext serviceTacho calibrationTax expiry')]/following::i)[2]
    Sleep    3

Search results using the “Select search” value on Vehicle planning page
    Selenium2Library.Click Element    //*[@id="select2-chosen-2"]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Annual service')])[last()]
    Sleep    2
    Selenium2Library.Click Element    //*[@id="select2-chosen-3"]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Date passed')])[last()]
    Sleep    2
    Selenium2Library.Click Element    xpath=(.//select[contains(normalize-space(.), 'Date passedNext 7 days8-14 days time15-30 days time')]/following::i)[1]
    Sleep    5
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')])[2]
    Sleep    3

Download/export a report on Vehicle planning page
    Selenium2Library.Click Element    xpath=((.//div[contains(normalize-space(.), 'Add vehicle')])[last()]/child::span)[last()]
    Sleep    5

Add a vehicle on Vehicle planning page
    Go to    http://fleetmastr.aecordigitalqa.com/vehicles/planning
    Sleep    5
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Add vehicle')]
    Sleep    2
    Comment    Change registration number
    Selenium2Library.Input Text    xpath=(.//label[contains(., 'Registration*:')]/following::input[@type='text'])[1]    REGISTRATION57
    Selenium2Library.Click Element    xpath=((.//span[contains(., 'Select')])[1]/following::b)[1]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Ranger Pickup')])[last()]
    Selenium2Library.Input Text    xpath=(.//div[contains(., 'miles')])[last()]/child::input[@type='text']    600
    Selenium2Library.Click Element    xpath=((.//span[contains(., 'Select')])[1]/following::b)[1]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Roadworthy (with defects)')])[last()]
    Selenium2Library.Click Element    //*[@id="select2-chosen-3"]
    Selenium2Library.Click Element    xpath=(.//div[contains(., 'aecortest2019+3@gmail.com')])[last()]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Registration date:')]/following::i)[1]
    Selenium2Library.Click Element    xpath=(.//td[contains(., '24')])[last()]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'First use inspection date:')]/following::i)[1]
    Selenium2Library.Click Element    xpath=(.//td[contains(., '24')])[last()]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Vehicle lease expiry date:')]/following::i)[1]
    Selenium2Library.Click Element    xpath=(.//td[contains(., '24')])[last()]
    Selenium2Library.Input Text    //*[@id="P11D_list_price"]    20000
    Comment    Change chassis number (same as registration number)
    Selenium2Library.Input Text    xpath=(.//label[contains(., 'Chassis number:')]/following::input[@type='text'])[1]    CHASSIS57
    Selenium2Library.Input Text    xpath=(.//label[contains(., 'Contract ID:')]/following::input[@type='text'])[1]    CONTRACTID1
    Selenium2Library.Click Element    //*[@id="s2id_vehicle_division"]/a/span[2]/b
    Selenium2Library.Click Element    //*[@id="select2-results-4"]
    Selenium2Library.Click Element    //*[@id="s2id_vehicle_region"]/a/span[2]/b
    Selenium2Library.Click Element    //*[@id="select2-results-5"]
    Selenium2Library.Click Element    //*[@id="s2id_vehicle_location_id"]/a/span[2]/b
    Selenium2Library.Click Element    //*[@id="select2-results-6"]
    Selenium2Library.Click Element    //*[@id="s2id_vehicle_repair_location_id"]/a/span[2]/b
    Selenium2Library.Click Element    //*[@id="select2-results-7"]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Repair/Maintenance contract expiry date:')]/following::i)[1]
    Selenium2Library.Click Element    xpath=(.//td[contains(., '24')])[last()]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'MOT expiry date:')]/following::i)[1]
    Selenium2Library.Click Element    xpath=(.//td[contains(., '24')])[last()]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Vehicle tax expiry date:')]/following::i)[1]
    Selenium2Library.Click Element    xpath=(.//td[contains(., '24')])[last()]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Annual service inspection date:')]/following::i)[1]
    Selenium2Library.Click Element    xpath=(.//td[contains(., '24')])[last()]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Next service inspection date:')]/following::i)[1]
    Selenium2Library.Click Element    xpath=(.//td[contains(., '24')])[last()]
    Selenium2Library.Click Element    xpath=(.//button[contains(., 'Save')][@type='submit'])[1]
    Sleep    3

Add new defect on Vehicle defects page
    Go To    http://fleetmastr.aecordigitalqa.com/defects
    Sleep    5
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Add new defect')]
    Sleep    2
    Selenium2Library.Click Element    xpath=((.//label[contains(., 'Registration*:')])[1]/following::span)[1]
    Comment    change registration number same as in    Create New Vehicle on Vehicle search page
    Selenium2Library.Input Text    xpath=(.//input[@id=//label[contains(., 'Registration*:')]/@for][@type='text'])[last()]    REGISTRATION35
    Comment    change registration number
    Selenium2Library.Click Element    xpath=.//span[contains(., 'REGISTRATION35')]
    Selenium2Library.Input Text    //*[@id="odometer-reading"]    1000
    Sleep    3
    Selenium2Library.Click Element    //*[@id="create-checks-page"]/div[1]/div/div[2]/div/div/div[3]/button
    Sleep    3
    Comment    registration number same as    Create New Vehicle on Vehicle search page
    Page Should Contain    REGISTRATION35
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Confirm')][@type='button']
    Sleep    5
    Page Should Contain    Create New Defect
    Sleep    2
    Selenium2Library.Click Element    xpath=(.//div[contains(., 'Leaks')])[13]
    Sleep    2
    Selenium2Library.Click Element    //*[@id="create-checks-page"]/div[1]/div/div[2]/div/div/div/div[1]/div[2]/div[2]/div[2]/div/div/div[5]/p/button
    Sleep    3
    Page Should Contain    Add Defect
    Click Button    xpath=.//button[contains(normalize-space(.), 'Upload image')][@type='button']
    Sleep    5
    SikuliLibrary.Input Text    \    C:\\Users\\aceor_indra\\Pictures\\Saved Pictures\\download.jpg
    Sleep    3
    Press Special Key    ENTER
    Comment    Choose File    //*[@id="edit-defect-modal"]/div/div/div[2]/form/div/div[3]/div/button[3]    C:\\Users\\Public\\Pictures\\pc-101-1.png
    Sleep    15
    Selenium2Library.Click Element    xpath=(.//button[contains(., 'Save')][@type='button'])[1]
    Sleep    3
    Selenium2Library.Click Element    xpath=.//button[contains(normalize-space(.), 'Create vehicle defect')][@type='button']
    Sleep    2
    Selenium2Library.Click Element    xpath=.//button[contains(normalize-space(.), 'Unsafe to operate')][@type='button']
    Wait Until Page Does Not Contain    Check has been saved successfully
    Sleep    5

Change the columns selected on the page via the column management pop-up on User management page
    Go to    http://fleetmastr.aecordigitalqa.com/users
    Sleep    5
    Selenium2Library.Click Element    xpath=((.//div[contains(normalize-space(.), 'Reset columns')])[last()]/child::span)[1]
    Sleep    2
    Selenium2Library.Click Element    xpath=((.//label[contains(., 'Username/Email')])[1]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Job Title')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Landline Number')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=((.//label[contains(., 'Division')])[1]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Enable Account Login')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=.//a[contains(., 'Submit')]
    Sleep    3
    Page Should Contain    ID
    Sleep    2

Reset the columns on User management page
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Reset columns')]
    Sleep    2
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Yes')][@type='button']
    Sleep    2
    Page Should Contain    Username/Email

Download/export a report on User management page
    Selenium2Library.Click Element    xpath=((.//div[contains(normalize-space(.), 'Reset columns Add new user')])[last()]/child::span)[last()]
    Sleep    5

Reset the columns on Workshops page
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Reset columns')]
    Sleep    2
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Yes')][@type='button']
    Sleep    2
    Page Should Contain    Landline Number

Change the columns selected on the page via the column management pop-up on Workshops page
    Go to    http://fleetmastr.aecordigitalqa.com/workshops
    Sleep    5
    Selenium2Library.Click Element    xpath=((.//div[contains(normalize-space(.), 'Reset columns Add new workshop user')])[last()]/child::span)[1]
    Sleep    2
    Selenium2Library.Click Element    xpath=((.//label[contains(., 'Username/Email')])[1]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Landline Number')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Mobile Number')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=((.//label[contains(., 'Address1')])[1]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=((.//label[contains(., 'Address2')])[1]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=((.//label[contains(., 'Town/City')])[1]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=.//a[contains(., 'Submit')]
    Sleep    2
    Page Should Contain    Address1
    Sleep    2

Download/export a report on Workshops page
    Selenium2Library.Click Element    xpath=((.//div[contains(normalize-space(.), 'Reset columns Add new workshop user')])[last()]/child::span)[last()]
    Sleep    5

Search by last name on User management page
    Go to    http://fleetmastr.aecordigitalqa.com/users
    Sleep    5
    Selenium2Library.Input Text    //*[@id="quickSearchInput"]    Patel2
    Selenium2Library.Click Element    //*[@id="search"]/i
    Sleep    3
    Page should contain    Sandeep
    Sleep    2

Clear a search by last name on User management page
    Go to    http://fleetmastr.aecordigitalqa.com/users
    Sleep    5
    Selenium2Library.Input Text    //*[@id="quickSearchInput"]    Patel2
    Selenium2Library.Click Element    //*[@id="search"]/i
    Sleep    3
    Page should contain    Sandeep
    Sleep    2
    Selenium2Library.Click Element    //*[@id="defects-filter-form"]/div/div/div/div/button[2]
    Sleep    3

Search results using the “Search by company name” value on Workshops page
    Go to    http://fleetmastr.aecordigitalqa.com/workshops
    Sleep    5
    Selenium2Library.Input Text    //*[@id="quickSearchInput"]    Aecor1
    Selenium2Library.Click Element    //*[@id="search"]
    Sleep    3
    Page should contain    Sandeep
    Sleep    3

Clear a search on Workshops page
    Go to    http://fleetmastr.aecordigitalqa.com/workshops
    Sleep    5
    Selenium2Library.Input Text    //*[@id="quickSearchInput"]    Aecor1
    Selenium2Library.Click Element    //*[@id="search"]
    Sleep    3
    Page should contain    Sandeep
    Sleep    2
    Selenium2Library.Click Element    //*[@id="defects-filter-form"]/div/div/div/div/button[2]
    Sleep    3

Search results using the “Enter defect ID” value on Vehicle defects page
    Go To    http://fleetmastr.aecordigitalqa.com/defects
    Sleep    5
    Selenium2Library.Input Text    //*[@id="defect_id"]    001
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')][@type='submit'])[1]
    Sleep    3

Clear a search on Vehicle defects page
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')])[2]
    Sleep    3

Search results using the “Enter vehicle registration” value on Vehicle defects page
    Go to    http://fleetmastr.aecordigitalqa.com/defects
    sleep    5
    Selenium2Library.Click Element    //*[@id="select2-chosen-3"]
    Comment    registration number same as    Add new defect on Vehicle defects page
    Selenium2Library.Input Text    xpath=(.//span[contains(normalize-space(.), 'Please enter 1 or more character')]/following::input[@type='text'])[last()]    REGISTRATION35
    Selenium2Library.Click Element    xpath=.//span[contains(., 'REGISTRATION35')]
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')][@type='submit'])[1]
    Sleep    3

Edit a defect on Vehicle defects page
    Selenium2Library.Click Element    xpath=(.//td[contains(., 'Today')]/following::i)[2]
    Sleep    3
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Export defect note')]
    Sleep    3
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Export defect history')]
    Sleep    3
    Selenium2Library.Click Element    //*[@id="vehicle-status-select"]/div/a
    Comment    Selenium2Library.Click Element    xpath=(.//span[contains(., 'VOR')])[last()]
    Comment    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Awaiting kit')])[last()]
    Selenium2Library.Click Element    //*[@id="select2-chosen-2"]
    Selenium2Library.Click Element    xpath=(.//div[contains(., 'Re-positioning')])[last()]
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')][@type='submit'])[1]
    Sleep    3
    Page Should Contain    Data updated successfully.
    Sleep    2
    Selenium2Library.Click Element    //*[@id="defect-status-edit"]
    Comment    Selenium2Library.Click Element    xpath=(.//span[contains(., 'Reported')])[3]
    Comment    Selenium2Library.Click Element    xpath=(.//div[contains(., 'Acknowledged')])[last()]
    Selenium2Library.Click Element    //*[@id="select2-chosen-16"]
    Selenium2Library.Click Element    xpath=(.//div[contains(., 'Allocated')])[last()]
    Sleep    3
    Selenium2Library.Input Text    //*[@id="comment"]    Defect status comment
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Save')][@type='submit']
    Sleep    3
    Page Should Contain    Data updated successfully.
    Sleep    2
    Selenium2Library.Click Element    //*[@id="defect-workshop-edit"]
    Selenium2Library.Click Element    xpath=(.//span[contains(., 'Select')])[2]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Aecor (Test1 Test1)')])[last()]
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')][@type='submit'])[1]
    Sleep    3
    Page Should Contain    Data updated successfully.
    Sleep    2
    Selenium2Library.Click Element    //*[@id="est_completion_date"]
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')][@type='button'])[1]
    Selenium2Library.Click Element    xpath=(.//td[contains(., '28')])[last()]
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')][@type='submit'])[1]
    Sleep    3
    Page Should Contain    Data updated successfully.
    Sleep    2
    Selenium2Library.Click Element    //*[@id="defect-cost"]
    Selenium2Library.Input Text    xpath=(.//td[contains(normalize-space(.), 'Defect cost:')]/following::input[@type='text'])[1]    500
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')][@type='submit'])[1]
    Sleep    3
    Page Should Contain    Data updated successfully.
    Sleep    2
    Selenium2Library.Click Element    //*[@id="defect-invoice-date"]
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')][@type='button'])[1]
    Selenium2Library.Click Element    xpath=(.//td[contains(., '28')])[last()]
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')][@type='submit'])[1]
    Sleep    3
    Page Should Contain    Data updated successfully.
    Sleep    2
    Selenium2Library.Click Element    //*[@id="defect-invoice-number"]
    Selenium2Library.Input Text    xpath=(.//td[contains(normalize-space(.), 'Defect invoice number:')]/following::input[@type='text'])[1]    500
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')][@type='submit'])[1]
    Sleep    3
    Page Should Contain    Data updated successfully.
    Sleep    3

Add a new comment on Vehicle defects page
    Selenium2Library.Input Text    xpath=.//textarea[@placeholder='Enter comments here']    Vehicle defects comment
    Sleep    2

Add a file on Vehicle defects page
    Choose File    //*[@id="saveCommentForDefect"]/div[3]/div/div/div/input    C:\\Users\\aceor_indra\\Pictures\\Saved Pictures\\download.jpg
    Sleep    5
    Selenium2Library.Click Element    xpath=.//input[@value='Save'][@type='submit']
    Sleep    3
    Page Should Contain    Data has been saved successfully.

Change the columns selected on the page via the column management pop-up on Vehicle defects page
    Go to    http://fleetmastr.aecordigitalqa.com/defects
    Sleep    5
    Selenium2Library.Click Element    xpath=((.//div[contains(normalize-space(.), 'Reset columns Add new defect')])[last()]/child::span)[1]
    Sleep    2
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Defect ID')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=((.//label[contains(., 'Category')])[1]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Allocated To')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Defect Status')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Date Added to Fleet')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Vehicle Category')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=.//a[contains(., 'Submit')]
    Sleep    3
    Page Should Contain    Defect
    Sleep    2

Reset the columns on Vehicle defects page
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Reset columns')]
    Sleep    2
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Yes')][@type='button']
    Sleep    3
    Page Should Contain    Category
    Sleep    2

Download/export a report on Vehicle defects page
    Selenium2Library.Click Element    xpath=((.//div[contains(normalize-space(.), 'Reset columns Add new defect')])[last()]/child::span)[last()]
    Sleep    5

Search results using the “Regions” value on Vehicle checks page
    Go To    http://fleetmastr.aecordigitalqa.com/checks
    Sleep    3
    Selenium2Library.Click Element    xpath=.//span[contains(normalize-space(.), 'All regions')]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Head Office')])[last()]
    Selenium2Library.Click Element    xpath=.//button[contains(., '')][@type='submit']
    Sleep    3
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')])[2]
    Sleep    3

Search results using the “Enter vehicle registration” value on Vehicle checks page
    Selenium2Library.Click Element    xpath=.//span[contains(normalize-space(.), 'Enter vehicle registration')]
    Selenium2Library.Input Text    xpath=(.//span[contains(normalize-space(.), 'Please enter 1 or more character')]/following::input[@type='text'])[last()]    REGISTRATION1
    Selenium2Library.Click Element    xpath=(.//span[contains(., 'REGISTRATION1')])[2]
    Selenium2Library.Click Element    xpath=.//button[contains(., '')][@type='submit']
    Sleep    3
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')])[2]
    Sleep    3

Search results using the “Select check result” value on Vehicle checks page
    Selenium2Library.Click Element    xpath=.//span[contains(normalize-space(.), 'Select check result')]
    Selenium2Library.Click Element    xpath=(.//div[contains(normalize-space(.), 'Unsafe to operate')])[last()]
    Selenium2Library.Click Element    xpath=.//button[contains(., '')][@type='submit']
    Sleep    3
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')])[2]
    Sleep    3

Search results using the “Report date” value on Vehicle checks page
    Selenium2Library.Click Element    xpath=.//input[@placeholder='Report date'][@type='text']
    Selenium2Library.Click Element    xpath=.//li[contains(normalize-space(.), 'Last 7 days')]
    Selenium2Library.Click Element    xpath=.//button[contains(., '')][@type='submit']
    Sleep    3
    Selenium2Library.Click Element    xpath=(.//button[contains(., '')])[2]
    Sleep    3

Change the columns selected on the page via the column management pop-up on Vehicle checks page
    Go to    http://fleetmastr.aecordigitalqa.com/checks
    Sleep    5
    Selenium2Library.Click Element    xpath=((.//div[contains(normalize-space(.), 'Reset columns')])[last()]/child::span)[1]
    Sleep    2
    Selenium2Library.Click Element    xpath=(.//label[contains(., 'Type')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Vehicle Status')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Check Result')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(., 'Driver')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(., 'Odometer')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=(.//label[contains(., 'Model')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=.//a[contains(., 'Submit')]
    Sleep    2
    Page Should Contain    Model
    Sleep    2

Reset the columns on Vehicle checks page
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Reset columns')]
    Sleep    2
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Yes')][@type='button']
    Sleep    3
    Page Should Contain    Type
    Sleep    2

Download/export a report on Vehicle checks page
    Selenium2Library.Click Element    xpath=((.//div[contains(normalize-space(.), 'Reset columns')])[last()]/child::span)[last()]
    Sleep    5

Change their password
    Go to    http://fleetmastr.aecordigitalqa.com/settings
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
    Go to    http://fleetmastr.aecordigitalqa.com/settings
    Sleep    5
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Primary colour*:')]/following::input[@type='text'])[1]
    Selenium2Library.Input Text    xpath=(.//div[contains(., '\#')])[last()]/child::input[@type='text']    3eade3
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
    Go to    http://fleetmastr.aecordigitalqa.com/workshops
    Sleep    5
    Selenium2Library.Click Element    xpath=((.//div[contains(normalize-space(.), 'Workshop User List')])[last()]/following::input[@type='checkbox'])[1]
    Sleep    5

Edit user workshop record
    Selenium2Library.Click Element    xpath=((.//u[contains(normalize-space(.), 'Re-send invite')])[1]/following::i)[1]
    Sleep    3
    Selenium2Library.Input Text    xpath=((.//label[contains(normalize-space(.), 'First name*:')])[last()]/following::input[@type='text'])[1]    Sandeep1
    Selenium2Library.Input Text    xpath=((.//label[contains(normalize-space(.), 'Last name*:')])[last()]/following::input[@type='text'])[1]    Patel1
    Selenium2Library.Input Text    xpath=((.//label[contains(., 'Address1:')])[last()]/following::input[@type='text'])[1]    Menpura1
    Selenium2Library.Input Text    xpath=((.//label[contains(., 'Address2:')])[last()]/following::input[@type='text'])[1]    Dabhoi1
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Update')][@type='submit']
    Sleep    3
    Page Should Contain    Data has been saved successfully.
    Sleep    2

Edit user record on User management page
    Selenium2Library.Click Element    xpath=((.//u[contains(normalize-space(.), 'Re-send invite')])[1]/following::i)[1]
    Sleep    3
    Selenium2Library.Input Text    xpath=((.//label[contains(normalize-space(.), 'First name*:')])[last()]/following::input[@type='text'])[1]    Sandeep1
    Selenium2Library.Input Text    xpath=((.//label[contains(normalize-space(.), 'Last name*:')])[last()]/following::input[@type='text'])[1]    Patel1
    Selenium2Library.Input Text    xpath=((.//label[contains(normalize-space(.), 'Job title:')])[last()]/following::input[@type='text'])[1]    QA1
    Selenium2Library.Click Element    xpath=(.//a[contains(normalize-space(.), 'User Permissions')])[last()]
    Sleep    1
    Selenium2Library.Click Element    xpath=(.//label[contains(normalize-space(.), 'Workshop manager:')]/following::input[@type='checkbox'])[1]
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Update')][@type='submit']
    Sleep    3
    Page Should Contain    Data has been saved successfully.
    Sleep    3

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

Click in to a vehicle check
    Go to    http://fleetmastr.aecordigitalqa.com/checks
    Sleep    5
    Selenium2Library.Click Element    xpath=((.//td[contains(normalize-space(.), 'A Soni')])[1]/following::i)[1]
    Sleep    3

Export vehicle check
    Selenium2Library.Click Element    xpath=.//a[contains(normalize-space(.), 'Export vehicle check')]
    Sleep    3

Edit a vehicle check
    Selenium2Library.Click Element    xpath=.//button[contains(normalize-space(.), 'Edit vehicle check')]
    Sleep    1
    Page Should Contain    Edit mode has been enabled.
    Comment    Add a defect
    Selenium2Library.Click Element    xpath=(.//div[contains(., 'Leaks')])[8]
    Sleep    2
    Page Should Contain    Fuel leak
    Selenium2Library.Click Element    xpath=(.//button[contains(., 'Edit')][@type='button'])[39]
    Sleep    2
    Selenium2Library.Click Element    xpath=.//button[contains(., 'Defect')][@type='button']
    Sleep    5
    Selenium2Library.Click Element    xpath=.//button[contains(normalize-space(.), 'Upload image')][@type='button']
    Sleep    3
    SikuliLibrary.Input Text    \    C:\\Users\\aceor_indra\\Pictures\\Saved Pictures\\download.jpg
    Sleep    3
    Press Special Key    ENTER
    Comment    Choose file    xpath=.//button[contains(normalize-space(.), 'Upload image')][@type='button']    C:\\Users\\Public\\Pictures\\pc-101-1.png
    Sleep    15
    Selenium2Library.Input Text    //*[@id="edit-modal"]/div/div/div[2]/form/div/div[6]/div/textarea    Defect1
    Selenium2Library.Click Element    //*[@id="edit-modal"]/div/div/div[3]/div/button[2]
    Sleep    15
    Comment    Page Should Contain    Check has been updated successfully.
    Comment    Sleep    5
    Comment    Edit a defect
    Go to    http://fleetmastr.aecordigitalqa.com/checks
    Sleep    5
    Selenium2Library.Click Element    xpath=((.//td[contains(normalize-space(.), 'A Soni')])[1]/following::i)[1]
    Sleep    3
    Selenium2Library.Click Element    xpath=.//button[contains(normalize-space(.), 'Edit vehicle check')]
    Sleep    1
    Page Should Contain    Edit mode has been enabled.
    Selenium2Library.Click Element    xpath=(.//div[contains(., 'Leaks')])[8]
    Sleep    2
    Page Should Contain    Fuel leak
    Selenium2Library.Click Element    xpath=(.//button[contains(., 'Edit')][@type='button'])[39]
    Sleep    2
    Selenium2Library.Click Element    xpath=.//button[contains(normalize-space(.), 'No defect')][@type='button']
    Sleep    2
    Selenium2Library.Input Text    //*[@id="edit-modal"]/div/div/div[2]/form/div/div[6]/div/textarea    No defect
    Selenium2Library.Click Element    //*[@id="edit-modal"]/div/div/div[3]/div/button[2]
    Sleep    15
    Comment    Page Should Contain    Check has been updated successfully.
    Comment    Sleep    5
