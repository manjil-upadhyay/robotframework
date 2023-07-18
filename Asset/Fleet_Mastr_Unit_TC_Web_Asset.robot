*** Settings ***
Library           Selenium2Library
Library           openpyxl.reader.excel
Library           String
Library           SikuliLibrary
Library           AppiumLibrary
Library           AutoItLibrary
Variables         ../Fleetmastr.py
Variables         ../Image.py
Library           OperatingSystem

*** Test Cases ***
AssetProfile
    [Documentation]    Asset Profile page
    ...    --------------------------
    ...    Verify User can add asset profile and check overall functionality of asset profile page.
    ...    -------------------------
    ...    Total Run Time:
    ...    00:05:00
    [Tags]    Regression    Asset    Asset Profile
    [Setup]    Log in into Fleet Mastr    #Log in into Fleet Mastr
    Create Asset Profile
    Search Asset Profile
    Search Archived Asset Profile
    Column Management
    Reset Columns
    Refresh Records
    Get Details of Asset Profile
    Edit Asset Profile
    Asset Profile Download
    [Teardown]    Close All Browsers    # Close All Browsers

AssetSearch
    [Documentation]    Asset Search page
    ...    --------------------------
    ...    Verify User can add asset and check overall functionality of asset profile page.
    ...    -------------------------
    ...    Total Run Time:
    ...    00:05:45
    [Tags]    Regression    Asset    Asset Search
    [Setup]    Log in into Fleet Mastr    #Log in into Fleet Mastr
    Create Asset Profile
    Create Asset
    Asset Quick Search
    Asset Advance Search
    Search Aechived Assets
    AssetSearch Column Management
    Asset search Reset Columns
    Refresh Records
    Get Details of Asset
    Edit Asset
    Get List of Checks
    Get List of Defects
    Asset Serch Download
    [Teardown]    Close All Browsers    # Close All Browsers

Asset Defect page
    [Documentation]    Asset Defect page
    ...    --------------------------
    ...    Verify User can add asset defect and check overall functionality of asset profile page.
    ...    -------------------------
    ...    Total Run Time:
    ...    00:05:00
    [Tags]    Regression    Asset    Asset Defect
    [Setup]    Log in into Fleet Mastr    # Log in into Fleet Mastr
    Get asset details
    Asset Defect Search results using the “Enter defect ID” value on Asset defects page
    Asset Defect Clear a search on Asset defects page
    Asset Defect Search results using the “Enter Asset Number” value on Asset defects page
    Asset Defect Edit a defect on Asset defects page
    Asset Defect Add a new comment on Asset defects page
    Asset Defect Add a file on Asset defects page
    Asset Defect Change the columns selected on the page via the column management pop-up on Asset defects page
    Asset Defect Reset the columns on Asset defects page
    Asset Defect Download/export a report on Asset defects page- test
    [Teardown]    Close All Browsers    # Log Out from Fleet Mastr

Asset Check page
    [Documentation]    Asset Check page
    ...    --------------------------
    ...    Verify User can verify asset check and check overall functionality of asset profile page.
    ...    -------------------------
    ...    Total Run Time:
    ...    00:05:00
    [Tags]    Regression    Asset    Asset check
    [Setup]    Log in into Fleet Mastr    # Log in into Fleet Mastr
    Get asset details
    Asset Search results using the “Asset Number” value on Asset checks page
    Asset Search results using the “All Regions” value on Asset checks page
    Asset Search results using the “Select check result” value on Asset checks page
    Asset Search results using the “Report date” value on Asset checks page
    Asset Change the columns selected on the page via the column management pop-up on Asset checks page
    Asset Reset the columns on Asset checks page
    Asset View Asset check
    Asset Edit a asset check
    Asset Checks Download
    [Teardown]    Close All Browsers    # Close All Browsers

Asset FLeet planning
    [Documentation]    Fleet planning
    ...    --------------------------
    ...    Fleet planning is providing information ofr upcoming maintenance events
    ...    -------------------------
    ...    Total Run Time:
    ...    00:05:33
    Log in into Fleet Mastr
    Add a Asset on Fleet planning page
    Asset \ Search results using the “All regions” value on Asset planning page
    Asset - Search results using the “Asset Number” value on Asset planning page
    Asset - Search results using the “All events” value on Asset planning page
    Asset- Download/export a report on Asset planning page
    Asset - Reset Column for Asset Planning
    Log Out from Fleet Mastr

Verify File Download
    [Documentation]    This test case verifies that a user can successfully download a file
    [Tags]    Regression
    # create unique folder
    ${now}    Get Time    epoch
    ${download directory}    Join Path    ${OUTPUT DIR}    downloads_${now}
    Create Directory    ${download directory}
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    # list of plugins to disable. disabling PDF Viewer is necessary so that PDFs are saved rather than displayed
    ${disabled}    Create List    Chrome PDF Viewer
    ${prefs}    Create Dictionary    download.default_directory=${download directory}    plugins.plugins_disabled=${disabled}
    Call Method    ${chrome options}    add_experimental_option    prefs    ${prefs}
    Create Webdriver    Chrome    chrome_options=${chrome options}
    sleep    3
    Goto    https://the-internet.herokuapp.com/download
    sleep    3
    Selenium2Library.Click Element    //*[@id="content"]/div/a[1]
    sleep    3
    # wait for download to finish
    ${file}    Wait Until Keyword Succeeds    1 min    2 sec    Download should be done    ${download directory}

Test page
    [Documentation]    Asset Check page
    ...    --------------------------
    ...    Verify User can verify asset check and check overall functionality of asset profile page.
    ...    -------------------------
    ...    Total Run Time:
    ...    00:05:00
    [Setup]    # Log in into Fleet Mastr
    Selenium2Library.Open Browser    ${FleetmastrQA}    headlesschrome
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
    [Teardown]    # Log Out from Fleet Mastr

Verify File Download 1
    [Documentation]    This test case verifies that a user can successfully download a file
    [Tags]    Regression
    [Setup]    Log in into Fleet Mastr
    # create unique folder
    ${now}    Get Time    epoch
    ${download directory}    Join Path    ${OUTPUT DIR}    downloads_${now}
    Create Directory    ${download directory}
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    # list of plugins to disable. disabling PDF Viewer is necessary so that PDFs are saved rather than displayed
    ${disabled}    Create List    Chrome PDF Viewer
    ${prefs}    Create Dictionary    download.default_directory=${download directory}    plugins.plugins_disabled=${disabled}
    Call Method    ${chrome options}    add_experimental_option    prefs    ${prefs}
    Create Webdriver    Chrome    chrome_options=${chrome options}
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
    Asset Defect Download/export a report on Asset defects page
    # wait for download to finish
    ${file}    Wait Until Keyword Succeeds    1 min    2 sec    Download should be done    ${download directory}

Download PDF
    [Setup]
    Asset Checks Download

Telematics flag based
    [Setup]    # Log in into Fleet Mastr
    Selenium2Library.Open Browser    about:blank    gc
    Sleep    2
    Selenium2Library.Go to    https://uat-effectivegroup.fleetmastr.com/
    sleep    3
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Login to fleetmastr...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Input Text    ${UsernameTB}    support@imastr.com
    sleep    1
    Selenium2Library.Input Text    ${PasswordTB}    password
    sleep    1
    Selenium2Library.Click Element    ${LoginBTN}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:20%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Welcome User...!";document.body.appendChild(el);
    Sleep    2
    Maximize Browser Window
    go to    https://uat-effectivegroup.fleetmastr.com/settings
    Selenium2Library.Wait Until Element Is Visible    //*[@id="display_setting"]/div/div/div/div/form/div/div/div[2]/div/button    timeout=60
    Selenium2Library.Click Element    xpath=/html/body/div[2]/div[2]/div/section/div[3]/div/div/div/ul/li[8]
    Selenium2Library.Wait Until Element Is Visible    //*[@id="site_configuration_submit"]    timeout=60
    sleep    2
    Execute Javascript    window.scroll(0,500)
    Comment    ${BG}    Selenium2Library.Get Webelement    //*[@id="uniform-is_telematics_enabled"]/span
    Comment    ${bg color}=    Call Method    ${BG}    value_of_css_property    background-color
    Comment    Run Keyword If    '${bg color}' == 'rgba(199, 199, 199, 1)'    Enable telematics
    ${Status}    selenium2Library.get text    //*[@id="uniform-is_telematics_enabled"]/span
    log    ${Status}
    Run Keyword If    '${Status}' == 'Disabled'    Enable telematics

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

Login into SHL
    Selenium2Library.Open Browser    ${Asseturl}    Chrome
    Selenium2Library.Maximize Browser Window
    Sleep    2
    Selenium2Library.Click Element    ${Username}
    Selenium2Library.Input Text    ${Username}    ${UserID}
    Selenium2Library.Click Element    ${Password}
    Selenium2Library.Input Text    ${PasswordTB}    ${UserPWD}
    Sleep    1
    Selenium2Library.Click Button    ${LoginBTN}
    Sleep    3
    Selenium2Library.Go To    ${AssetProfilePage}
    Sleep    2

Create Asset Profile
    Go To    ${AddAssetProfile}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:20%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Create Asset profile...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${AssetType}
    ${AssetName}    Generate Random String    6    abcdefghijklmnopqrstuvwxyz1234567890
    Set Variable    ${AssetName}
    Set Global Variable    ${AssetName}
    log    ${AssetName}
    Selenium2Library.Input Text    ${AssetType}    ${AssetName}
    Sleep    1
    Selenium2Library.Click Element    ${AssetCategory}
    Sleep    1
    Selenium2Library.Click Element    ${SelectAssetCategory}
    Selenium2Library.Click Element    ${AssetSubCategory}
    Sleep    1
    Selenium2Library.Click Element    ${SelectAssetSubCategory}
    Selenium2Library.Click Element    ${AssetOdometerSetting}
    Sleep    1
    Selenium2Library.Click Element    ${OdometerSettingOption}
    Selenium2Library.Click Element    ${AssetManufacturer}
    Selenium2Library.Input Text    ${AssetManufacturer}    ${AssetManufacturerText}
    Sleep    1
    Selenium2Library.Click Element    ${AssetModel}
    Selenium2Library.Input Text    ${AssetModel}    ${AssetModelText}
    Selenium2Library.Click Element    ${AssetFuelType}
    Sleep    1
    Selenium2Library.Click Element    ${SelectAssetFuelType}
    Sleep    1
    Selenium2Library.Click Element    ${AssetEngineType}
    Sleep    1
    Selenium2Library.Click Element    ${SelectAssetFuelType}
    Selenium2Library.Click Element    ${AssetServiceFrequency}
    Sleep    1
    Selenium2Library.Click Element    ${SelectAssetServiceFrequency}
    Sleep    1
    Selenium2library.Click Button    ${AssetCreationSubmit}
    Sleep    5

Search Asset Profile
    Sleep    2
    Go To    ${AssetProfilePage}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Search Asset profile...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Wait Until Page Contains    Asset Profiles
    Selenium2Library.Click Element    ${AssetSearchFilter}
    Sleep    5
    Selenium2Library.Click Element    //div[@id='select2-drop']
    Sleep    2
    Selenium2Library.Click Element    ${AssetSearchInputField}
    Selenium2Library.Input Text    ${AssetSearchInputField}    ${AssetName}
    Press Key    ${AssetSearchInputField}    \\13
    Sleep    3
    Page Should Contain    ${AssetName}
    Sleep    3
    Selenium2Library.Click Element    ${AssetClearSearch}
    Sleep    1

Search Archived Asset Profile
    sleep    3
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Search Archived Asset profile...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${ArchivedAssetProfile}
    Execute Javascript    window.scrollTo(0,500)
    Sleep    2
    Page Should Contain    Archived
    Sleep    1
    Execute Javascript    window.scrollTo(0,0)
    Sleep    2
    Selenium2Library.Click Element    ${ArchivedAssetProfile}
    Reload Page

Reset Columns
    Go To    ${AssetProfilePage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify Reset column functionality...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${ResetColumnBTN}
    Sleep    4
    Selenium2Library.Click Element    ${ResetColumnYesBTN}
    Sleep    2

Column Management
    Sleep    1
    Selenium2Library.Click Element    ${ResertColumnDD}
    Sleep    2
    Selenium2Library.Click Element    ${AssetColumnType}
    Selenium2Library.Click Element    ${AssetColumnCategory}
    Selenium2Library.Click Element    ${AssetColumnSubCategory}
    Selenium2Library.Click Element    ${AssetColumnManufacturer}
    Selenium2Library.Click Element    ${AssetColumnModel}
    Selenium2Library.Click Element    ${AssetColumnFuelType}
    Selenium2Library.Click Element    ${AssetColumnModelProfileStatus}
    Sleep    2
    Execute Javascript    window.scrollTo(0,50)
    Sleep    1
    Selenium2Library.Click Element    ${AssetColumnSubmit}
    Sleep    1
    Page Should Contain    Engine Type
    Reset Columns

Refresh Records
    Sleep    2
    Selenium2Library.Click Element    ${AssetRefresh}

Asset Profile Download
    # create unique folder
    ${now}    Get Time    epoch
    ${download directory}    Join Path    ${OUTPUT DIR}    downloads_${now}
    Create Directory    ${download directory}
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    # list of plugins to disable. disabling PDF Viewer is necessary so that PDFs are saved rather than displayed
    ${disabled}    Create List    Chrome PDF Viewer
    ${prefs}    Create Dictionary    download.default_directory=${download directory}    plugins.plugins_disabled=${disabled}
    Call Method    ${chrome options}    add_experimental_option    prefs    ${prefs}
    Create Webdriver    Chrome    chrome_options=${chrome options}
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
    Go To    ${AssetProfilePage}
    sleep    3
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify download functionality...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${AssetDownload}
    sleep    3
    Maximize Browser Window
    # wait for download to finish
    ${file}    Wait Until Keyword Succeeds    1 min    2 sec    Download should be done    ${download directory}

Get Details of Asset Profile
    Sleep    3
    Selenium2Library.Wait Until Page Contains    Asset Profiles    timeout=60
    Execute Javascript    window.scrollTo(0,0)
    Sleep    3
    Selenium2Library.Click Element    ${AssetSearchFilter}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Get asset profile details...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    //div[@id='select2-drop']
    Selenium2Library.Click Element    ${AssetSearchInputField2}
    Sleep    2
    Selenium2Library.Input Text    ${AssetSearchInputField2}    ${AssetName}
    Sleep    2
    Press Key    ${AssetSearchInputField2}    \\13
    Sleep    3
    Page Should Contain    ${AssetName}
    Sleep    3
    Selenium2Library.Click Element    ${AssetProfileDetails}
    Sleep    3
    Selenium2Library.Wait Until Page Contains    Asset Profile Details    timeout=60
    Page Should Contain    ${AssetName}
    Page Should Contain    ${AssetManufacturerText}
    Page Should Contain    ${AssetModelText}
    Sleep    1

Edit Asset Profile
    Go To    ${AssetProfilePage}
    Sleep    4
    Selenium2Library.Click Element    ${AssetSearchFilter}
    Sleep    1
    Selenium2Library.Click Element    ${AssetSearchInputField}
    Selenium2Library.Input Text    ${AssetSearchInputField}    ${AssetName}
    Press Key    ${AssetSearchInputField}    \\13
    Sleep    3
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Edit Asset Profile...!";document.body.appendChild(el);
    Sleep    2
    Page Should Contain    ${AssetName}
    Sleep    3
    Selenium2Library.Click Element    ${AssetProfileEdit}
    Sleep    3
    Page Should Contain    Edit Asset Profile
    Selenium2Library.Click Element    ${AssetSubCategory}
    Sleep    1
    Selenium2Library.Click Element    ${ChangeAssetSubCategory}
    Sleep    1
    Selenium2Library.Click Element    ${AssetProfileC02}
    Selenium2Library.Input Text    ${AssetProfileC02}    2
    Selenium2Library.Click Element    ${AssetADRTestInterval}
    Sleep    2
    Selenium2Library.Click Element    ${AssetADRTestIntervalValue}
    Sleep    1
    Selenium2Library.Click Element    ${AssetPMIInterval}
    Sleep    2
    Selenium2Library.Click Element    ${AssetADRTestIntervalValue}
    Sleep    1
    Selenium2Library.Click Element    ${AssetRubberIntegrityTestInterval}
    Sleep    2
    Selenium2Library.Click Element    ${AssetADRTestIntervalValue}
    Sleep    1
    Selenium2Library.Click Element    ${AssetTankTestInterval}
    Sleep    2
    Selenium2Library.Click Element    ${AssetADRTestIntervalValue}
    Sleep    2
    Selenium2Library.Click Element    ${AssetCreationSubmit}
    Sleep    2
    Selenium2Library.Wait Until Page Contains    Asset Profiles    timeout=60

Test
    Sleep    5
    Selenium2Library.Go To    https://uat-shl.fleetmastr.com/assets/create

Create Asset
    Selenium2Library.Go To    ${AssetSearchurl}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Create Asset...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${AssetAdd}
    Sleep    3
    Selenium2Library.Page Should Contain    Asset Summary
    ${AssetNumberValue}    Generate Random String    6    0987654321
    Set Variable    ${AssetNumberValue}
    Set Global Variable    ${AssetNumberValue}
    Log    ${AssetNumberValue}
    Selenium2Library.Click Element    ${AssetNumber}
    Selenium2Library.Input Text    ${AssetNumber}    ${AssetNumberValue}
    Sleep    3
    Selenium2Library.Click Element    ${AssetTypeSelection}
    Sleep    2
    Selenium2Library.Click Element    //option[contains(text(),'${AssetName}')]
    Sleep    2
    Selenium2Library.Click Element    ${AssetStatus}
    Sleep    2
    Selenium2Library.Click Element    ${AssetStatusValue}
    Selenium2Library.Click Element    ${AssetAvailability}
    Sleep    2
    Selenium2Library.Click Element    ${AssetAvailabilityValue}
    Sleep    1
    Selenium2Library.Click Element    ${AssetOwnershipStatus}
    Sleep    2
    Selenium2Library.Click Element    ${AssetOwnershipStatusValue}
    Sleep    1
    Selenium2Library.Click Element    ${AssetNNRMCompliant}
    Sleep    2
    Selenium2Library.Click Element    ${AssetNNRMCompliantValue}
    Selenium2Library.Click Element    ${AssetDivision}
    Sleep    3
    Selenium2Library.Click Element    ${VSManufacturerTBVal}
    Sleep    2
    Selenium2Library.Click Element    ${AssetRegion}
    Sleep    3
    Selenium2Library.Click Element    ${VSManufacturerTBVal}
    Sleep    3
    Selenium2Library.Click Element    ${AssetSubmit}
    Selenium2Library.Wait Until Page Contains    Data has been saved successfully.
    Sleep    2

Asset Quick Search
    Go To    ${AssetSearchurl}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Search Asset...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${AssetQuickSearchButton}
    Selenium2Library.Click Element    ${AssetQuickSearchNumber}
    Sleep    2
    Selenium2Library.Click Element    ${AssetQuickSearchNumberField}
    Selenium2Library.Input Text    ${AssetQuickSearchNumberField}    ${AssetNumberValue}
    Press Key    ${AssetQuickSearchNumberField}    \\13
    Sleep    2
    Selenium2Library.Page Should Contain Element    //a[contains(text(),'${AssetNumberValue}')]
    Sleep    2
    Selenium2Library.Click Element    ${AssetQuickSearchClearFilter}
    Sleep    2

Asset Advance Search
    Sleep    1
    Go To    ${AssetSearchurl}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Search Asset...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${AssetAdvanceSearchButton}
    Sleep    2
    Selenium2Library.Click Element    ${AssetAdvanceSearchType}
    Sleep    3
    Selenium2Library.Click Element    ${AssetAdvanceSearchTypeField}
    Selenium2Library.Input Text    ${AssetAdvanceSearchTypeField}    ${AssetName}
    Sleep    1
    Press Key    ${AssetAdvanceSearchTypeField}    \\13
    Sleep    2
    Selenium2Library.Wait Until Page Contains Element    //a[contains(text(),'${AssetNumberValue}')]
    Sleep    2
    Comment    Reload Page
    Sleep    2
    Selenium2Library.Click Element    ${AssetAdvanceSearchClearFilter}
    Sleep    2

Search Aechived Assets
    Sleep    1
    Go To    ${AssetSearchurl}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Search Asset...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${ArchivedAsset}
    Sleep    2
    Selenium2Library.Page Should Contain Element    ${ArchivedAssetAssetion}
    Sleep    2
    Selenium2Library.Click Element    ${ArchivedAsset}
    Sleep    1

AssetSearch Column Management
    Go To    ${AssetSearchurl}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verifying comumn management..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${ResertColumnDD}
    Sleep    1
    Selenium2Library.Wait Until Page Contains    Asset List
    Sleep    1
    Selenium2Library.Click Element    ${AssetNumberSearch}
    Selenium2Library.Click Element    ${AssetTypeSearch}
    Selenium2Library.Click Element    ${AssetCategorySearch}
    Selenium2Library.Click Element    ${AssetSubCategorySearch}
    Selenium2Library.Click Element    ${AssetOwnershipSearch}
    Selenium2Library.Click Element    ${AssetStatusSearch}
    Selenium2Library.Click Element    ${AssetAvailabilitySearch}
    Sleep    2
    Selenium2Library.Click Element    ${ModelSubmitBTN}
    Sleep    3
    Selenium2Library.Page Should Contain    Asset List
    sleep    2

Get Details of Asset
    Sleep    3
    Go To    ${AssetSearchurl}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Get asset details..!";document.body.appendChild(el);
    Sleep    2
    Execute Javascript    window.scrollTo(0,0)
    Sleep    2
    Selenium2Library.Click Element    ${AssetQuickSearchButton}
    Selenium2Library.Click Element    ${AssetQuickSearchNumber}
    Sleep    2
    Selenium2Library.Click Element    ${AssetQuickSearchNumberField}
    Sleep    2
    Selenium2Library.Input Text    ${AssetQuickSearchNumberField}    ${AssetNumberValue}
    Sleep    2
    Press Key    ${AssetQuickSearchNumberField}    \\13
    Sleep    2
    Selenium2Library.Page Should Contain    Asset List
    Sleep    2
    Selenium2Library.Click Element    ${AssetDetailsBTN}
    Sleep    3
    Selenium2Library.Page Should Contain    Details
    Sleep    3

Edit Asset
    Go To    ${AssetSearchurl}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Edit asset..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${AssetQuickSearchButton}
    Selenium2Library.Click Element    ${AssetQuickSearchNumber}
    Sleep    2
    Selenium2Library.Click Element    ${AssetQuickSearchNumberField}
    sleep    1
    Selenium2Library.Input Text    ${AssetQuickSearchNumberField}    ${AssetNumberValue}
    Sleep    2
    selenium2Library.Press Key    ${AssetQuickSearchNumberField}    \\13
    Sleep    2
    Page Should Contain    Asset List
    Sleep    2
    Selenium2Library.Click Element    ${AssetEdit}
    Sleep    2
    Selenium2Library.Wait Until Page Contains    Asset Summary    timeout=60
    Selenium2Library.Click Element    ${OdometerReadingField}
    Sleep    1
    Selenium2Library.Input Text    ${OdometerReadingField}    5
    Sleep    2
    Selenium2Library.Click Element    ${RegistrationDate}
    Sleep    1
    Selenium2Library.Click Element    ${RegDateVal1}
    Sleep    1
    Selenium2Library.Click Element    ${RegDateVal2}
    Sleep    1
    Selenium2Library.Click Element    ${ReplacementDate}
    Sleep    2
    Selenium2Library.Click Element    ${ReplaceDateVal1}
    Sleep    1
    Selenium2Library.Click Element    ${ReplaceDateVal2}
    Sleep    1
    Selenium2Library.Click Element    ${SerialNumber}
    Sleep    1
    Selenium2Library.Input Text    ${SerialNumber}    123
    Sleep    2
    Selenium2Library.Click Element    ${AssetSubmit}
    Sleep    2
    Selenium2Library.Wait Until Page Contains    Asset Search    timeout=60

Get List of Checks
    Sleep    1
    Go To    ${AssetSearchurl}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Get asset list details..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${AssetQuickSearchButton}
    Selenium2Library.Click Element    ${AssetQuickSearchNumber}
    Sleep    2
    Selenium2Library.Click Element    ${AssetQuickSearchNumberField}
    Selenium2Library.Input Text    ${AssetQuickSearchNumberField}    ${AssetNumberValue}
    Press Key    ${AssetQuickSearchNumberField}    \\13
    Sleep    2
    Page Should Contain    Asset List
    Sleep    2
    Selenium2Library.Click Element    ${AssetChecks}
    Sleep    3
    Page Should Contain    Recent Asset Checks

Get List of Defects
    Sleep    1
    Comment    AssetDefects
    Go To    ${AssetSearchurl}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Get asset list defect..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${AssetQuickSearchButton}
    Selenium2Library.Click Element    ${AssetQuickSearchNumber}
    Sleep    2
    Selenium2Library.Click Element    ${AssetQuickSearchNumberField}
    Selenium2Library.Input Text    ${AssetQuickSearchNumberField}    ${AssetNumberValue}
    Press Key    ${AssetQuickSearchNumberField}    \\13
    Sleep    2
    Page Should Contain    Asset List
    Sleep    2
    Selenium2Library.Click Element    ${AssetDefects}
    Sleep    3
    Page Should Contain    Defects List
    Sleep    1

Asset Defect Search results using the “Enter defect ID” value on Asset defects page
    Go To    ${AssetDefectURL}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Search asset..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${EnterDefectIDTB}
    Selenium2Library.Input Text    ${EnterDefectIDTB}    ${Asset defect ID}
    Selenium2Library.Click Element    ${DefectSearchBTN}
    Sleep    3
    Selenium2Library.Click Element    ${DefectSearchClearBTN}

Asset Defect Clear a search on Asset defects page
    Go To    ${AssetDefectURL}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Search asset..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${EnterDefectIDTB}
    Selenium2Library.Input Text    ${EnterDefectIDTB}    ${Asset defect ID}
    Selenium2Library.Click Element    ${DefectSearchBTN}
    Sleep    3
    Selenium2Library.Click Element    ${DefectSearchClearBTN}

Asset Defect Search results using the “Enter Asset Number” value on Asset defects page
    Go to    ${AssetDefectURL}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Search asset using asset number..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${AssetNumberDD}
    Sleep    2
    Comment    Selenium2Library.Click Element    ${VSRegistrationTB}
    Comment    Selenium2Library.Input Text    ${VSRegistrationTB}    BTQA123
    AutoItLibrary.Send    ${Asset Number}
    Sleep    2
    Comment    Press Key    ${VSRegistrationTB}    \\13
    AutoItLibrary.Send    {ENTER}
    Sleep    2
    Selenium2Library.Click Element    ${DefectSearchBTN}
    Selenium2Library.Page Should Contain    ${Asset Number}
    Selenium2Library.Click Element    ${DefectSearchClearBTN}
    Sleep    3

Asset Defect Edit a defect on Asset defects page
    Go to    ${AssetDefectURL}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Edit asset defect..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${AssetNumberDD}
    Sleep    2
    Comment    Selenium2Library.Click Element    ${VSRegistrationTB}
    Comment    Selenium2Library.Input Text    ${VSRegistrationTB}    BTQA123
    Comment    Press Key    ${VSRegistrationTB}    \\13
    AutoItLibrary.Send    ${Asset Number}
    Sleep    2
    AutoItLibrary.Send    {ENTER}
    Sleep    2
    Selenium2Library.Click Element    ${DefectSearchBTN}
    Sleep    3
    Selenium2Library.Element Should Be Visible    ${DefectEditBTN}
    Selenium2Library.Click Element    ${DefectEditBTN}
    Sleep    3
    Selenium2Library.Page Should Contain    ${Asset Number}
    Sleep    2
    Selenium2Library.Click Element    ${ExportDefectNote}
    Sleep    2
    Selenium2Library.Click Element    ${ExportDefectHistory}
    Sleep    3
    Execute Javascript    window.scroll(0,500)
    Sleep    2
    Selenium2Library.Click Element    ${DefectCost}
    sleep    4
    ${defect cost}    Generate Random String    2    0123456789
    Set Global Variable    ${defect cost}
    log    ${defect cost}
    Sleep    1
    Selenium2Library.Input Text    ${Defctcostfield}    ${defect cost}
    Sleep    2
    Selenium2Library.Click Element    ${DefectCostSaveBTN}
    Sleep    3
    Selenium2Library.Element Should Be Visible    ${AddNewCommentArea}
    Selenium2Library.Click Element    ${AddNewCommentArea}
    Send    {SPACE}
    Sleep    2
    Execute Javascript    window.scroll(0,1400)
    sleep    3
    Selenium2Library.Click Element    ${EditAssetdefectSaveBTN}
    Sleep    2

Asset Defect Add a new comment on Asset defects page
    Go to    ${AssetDefectURL}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Add asset defect..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${AssetNumberDD}
    Sleep    2
    Comment    Selenium2Library.Click Element    ${VSRegistrationTB}
    Comment    Selenium2Library.Input Text    ${VSRegistrationTB}    ${RegNo}
    Comment    Press Key    ${VSRegistrationTB}    \\13
    AutoItLibrary.Send    ${Asset Number}
    Sleep    2
    AutoItLibrary.Send    {ENTER}
    Sleep    2
    Selenium2Library.Click Element    ${DefectSearchBTN}
    Sleep    3
    Selenium2Library.Click Element    ${AssetDefectViewBTN}
    Sleep    2
    Execute Javascript    window.scroll(0,1000)
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${AddNewCommentArea}
    Selenium2Library.Click Element    ${AddNewCommentArea}
    Sleep    1
    Selenium2Library.Input Text    ${AddNewCommentArea}    Testing is under progress... :)
    Sleep    3
    Execute Javascript    window.scroll(0,200)
    Selenium2Library.Element Should Be Visible    ${SaveCommentBTN}
    Selenium2Library.Click Element    ${SaveCommentBTN}
    Sleep    2

Asset Defect Add a file on Asset defects page
    Go to    ${AssetDefectURL}
    sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Add attachment on asset defect..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${AssetNumberDD}
    Sleep    2
    Comment    Selenium2Library.Click Element    ${VSRegistrationTB}
    Comment    Selenium2Library.Input Text    ${VSRegistrationTB}    ${RegNo}
    Comment    Press Key    ${VSRegistrationTB}    \\13
    Comment    Sleep    2
    AutoItLibrary.Send    ${Asset Number}
    Sleep    2
    AutoItLibrary.Send    {ENTER}
    Sleep    2
    Selenium2Library.Click Element    ${DefectSearchBTN}
    Sleep    3
    Selenium2Library.Element Should Be Visible    ${AssetDefectViewBTN}
    Selenium2Library.Click Element    ${AssetDefectViewBTN}
    Sleep    2
    Execute Javascript    window.scroll(0,500)
    Sleep    2
    Selenium2Library.Element Should Be Visible    ${AddNewCommentArea}
    Selenium2Library.Click Element    ${AddNewCommentArea}
    Sleep    1
    Send    {TAB}
    Sleep    2
    Send    {ENTER}
    Sleep    2
    Send    ${Image}
    Sleep    2
    Send    {ENTER}
    Sleep    5
    Execute Javascript    window.scroll(0,200)
    Selenium2Library.Element Should Be Visible    ${SaveCommentBTN}
    Selenium2Library.Click Element    ${SaveCommentBTN}
    Sleep    2

Asset Defect Change the columns selected on the page via the column management pop-up on Asset defects page
    Go to    ${AssetDefectURL}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verifying change column functionality..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${ResertColumnDD}
    Sleep    2
    Selenium2Library.Click Element    ${DefectIDCB}
    Sleep    1
    Selenium2Library.Click Element    ${AssetCategoryCB}
    Sleep    1
    Selenium2Library.Element Should Be Visible    ${AssetAllocatedtoCB}
    Selenium2Library.Click Element    ${AssetAllocatedtoCB}
    Sleep    1
    Selenium2Library.Element Should Be Visible    ${DefectStatusCB}
    Selenium2Library.Click Element    ${DefectStatusCB}
    Sleep    1
    Selenium2Library.Element Should Be Visible    ${ModelSubmitBTN}
    Selenium2Library.Click Element    ${ModelSubmitBTN}
    Sleep    3
    Page Should Contain    Defects List
    Sleep    2

Asset Defect Reset the columns on Asset defects page
    Go to    ${AssetDefectURL}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verifying reset column functionality..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${ResetColumnBTN}
    Sleep    3
    Selenium2Library.Click Element    ${ResetColumnYesBTN}
    Sleep    2
    Page Should Contain    Defects List
    Sleep    2

Asset Defect Download/export a report on Asset defects page
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
    Go to    ${AssetDefectURL}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verifying download report functionality..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${DownloadProfileIcon}
    Sleep    5

Asset Search results using the “Asset Number” value on Asset checks page
    Go To    ${AssetChecksURL}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify Asset number filter...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${AssetNumberDD1}
    Selenium2Library.Input Text    ${VCVehicleRegVal}    ${Asset Number}
    Sleep    2
    send    {ENTER}
    sleep    4
    Selenium2Library.Click Element    ${VCSearchBTN}
    Sleep    3
    Page Should Contain    ${Asset Number}
    Sleep    2
    Selenium2Library.Click Element    ${VCClearBTN}
    Sleep    1

Asset Search results using the “All Regions” value on Asset checks page
    Go To    ${AssetChecksURL}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify Region filter...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${AssetAdvancedSearchTab}
    Sleep    2
    Selenium2Library.Click Element    ${VCADVAllRegionDD}
    Sleep    2
    Selenium2Library.Click Element    ${VSManufacturerTBVal}
    Comment    Selenium2Library.Wait Until Page Contains    Recent Asset Checks    timeout=60
    Comment    Page Should Contain    Recent Asset Checks
    Comment    Sleep    2
    Comment    Selenium2Library.Click Element    ${VCADVClearBTN}
    Comment    sleep    1
    Comment    Selenium2Library.Click Element    ${VCADVSearchcheckDD}
    Comment    sleep    2
    Comment    send    {ENTER}
    Comment    sleep    4
    Comment    page Should Contain    Asset take out
    Comment    Selenium2Library.Click Element    ${VCADVClearBTN}
    sleep    1
    ${SelectedRegion}    Selenium2Library.Get text    //*[@id="s2id_asset_checks_region"]/a
    log    ${SelectedRegion}
    Set Global Variable    ${SelectedRegion}
    ${Region}    Selenium2Library.Get Text    //*[@id="selected_region_name"]
    log    ${Region}
    should match    ${Region}    ${SelectedRegion}
    Sleep    2
    ${count}    Set Variable    0
    ${test1}    set variable    0
    FOR    ${i}    IN RANGE    2    3
        ${Status}    Run Keyword And Return Status    Selenium2Library.Element Should Be Visible    xpath=(//table[@id='jqGrid']/tbody/tr/td[2])[${i}]
        Exit For Loop If    '${Status}' == 'False'
        ${Reg NO}    Selenium2Library.get text    xpath=(//table[@id='jqGrid']/tbody/tr/td[2])[${i}]
        log    ${Reg NO}
        Set Global Variable    ${Reg NO}
    END
    sleep    2
    Selenium2Library.Click Element    ${VCADVClearBTN}
    sleep    5
    Selenium2Library.Click Element    ${VCADVSearchcheckDD}
    sleep    2
    send    {ENTER}
    sleep    4
    Selenium2Library.Click Element    ${VCADVClearBTN}
    sleep    2
    ${count}    Set Variable    0
    ${test1}    set variable    0
    FOR    ${i}    IN RANGE    2    3
        ${Status}    Run Keyword And Return Status    Selenium2Library.Element Should Be Visible    xpath=(//table[@id='jqGrid']/tbody/tr/td[2])[${i}]
        Exit For Loop If    '${Status}' == 'False'
        ${Reg NO}    Selenium2Library.get text    xpath=(//table[@id='jqGrid']/tbody/tr/td[2])[${i}]
        log    ${Reg NO}
        Set Global Variable    ${Reg NO}
    END
    sleep    2
    Selenium2Library.Click Element    ${VCADVClearBTN}

Asset Search results using the “Select check result” value on Asset checks page
    Go To    ${AssetChecksURL}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify Select check result filter...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${AssetAdvancedSearchTab}
    Sleep    2
    Selenium2Library.Click Element    ${VCADVSelectcheckResult}
    Selenium2Library.Click Element    ${VCADVSelectcheckResultval}
    Sleep    3
    ${count}    Set Variable    0
    ${test1}    set variable    0
    FOR    ${i}    IN RANGE    2    3
        ${Status}    Run Keyword And Return Status    Selenium2Library.Element Should Be Visible    xpath=(//table[@id='jqGrid']/tbody/tr/td[2])[${i}]
        Exit For Loop If    '${Status}' == 'False'
        ${test}    Selenium2Library.get text    xpath=(//table[@id='jqGrid']/tbody/tr/td[2])[${i}]
        ${count}    evaluate    ${count}+1
        Set Global Variable    ${count}
    END
    sleep    2
    Selenium2Library.Click Element    ${VCADVClearBTN}
    sleep    2

Asset Search results using the “Report date” value on Asset checks page
    Go To    ${AssetChecksURL}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify Date filter...!";document.body.appendChild(el);
    Selenium2Library.Click Element    ${AssetAdvancedSearchTab}
    Sleep    2
    Selenium2Library.Click Element    ${VCADVDateDD}
    Sleep    2
    Selenium2Library.Click Element    ${VDADVDateVal}
    Sleep    5
    ${count}    Set Variable    0
    ${test1}    set variable    0
    FOR    ${i}    IN RANGE    2    3
        ${Status}    Run Keyword And Return Status    Selenium2Library.Element Should Be Visible    xpath=(//table[@id='jqGrid']/tbody/tr/td[2])[${i}]
        Exit For Loop If    '${Status}' == 'False'
        ${test}    Selenium2Library.get text    xpath=(//table[@id='jqGrid']/tbody/tr/td[2])[${i}]
        ${count}    evaluate    ${count}+1
        Set Global Variable    ${count}
    END
    sleep    2
    Selenium2Library.Click Element    ${VCADVClearBTN}
    sleep    2

Asset Change the columns selected on the page via the column management pop-up on Asset checks page
    Go to    ${AssetChecksURL}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify column management functionality...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${ResertColumnDD}
    Sleep    2
    Selenium2Library.Click Element    ${VCTypeCB}
    Selenium2Library.Click Element    ${VCCheckResultCB}
    Selenium2Library.Click Element    ${VCSubmitBTN}
    Sleep    2
    Page Should Contain    Asset return
    Sleep    2

Asset Reset the columns on Asset checks page
    Sleep    2
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify reset column...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${WSResetColumnBTN}
    Sleep    2
    Selenium2Library.Click Element    ${ConfirmSendBTN}
    Sleep    3
    Page Should Contain    Type
    Sleep    2

Asset Download/export a report on Asset checks page
    Sleep    2
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify download report functionality...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${DownloadProfileIcon}
    Sleep    5
    Page Should Contain    Recent Asset Checks

Asset View Asset check
    Go to    ${AssetChecksURL}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="View asset check...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${ViewAssetcheckicon}
    Sleep    5
    Page Should Contain    Manufacturer:

Asset Edit a asset check
    Go to    ${AssetChecksURL}
    Sleep    5
    Selenium2Library.Click Element    ${ViewAssetcheckicon}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Edit asset check...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${EditAssetCheckBTN}
    Sleep    2
    Comment    Add a defect
    Selenium2Library.Click Element    ${Editcheckoption}
    Sleep    2
    Page Should Contain    Trailer Coupling and Security - Safety Clip
    execute javascript    window.scroll(0,500)
    Sleep    1
    Selenium2Library.Click Element    ${AssetCheckEditBTN}
    Sleep    2
    Selenium2Library.Click Element    ${VCDefectBTN}
    Sleep    5
    Selenium2Library.Click Element    ${VCUploadBTN}
    Sleep    3
    Send    ${Image}
    Sleep    3
    send    {ENTER}
    Comment    Choose file    xpath=.//button[contains(normalize-space(.), 'Upload image')][@type='button']    C:\\Users\\Public\\Pictures\\pc-101-1.png
    Sleep    5
    Selenium2Library.Input Text    ${VCDefectcommentModel}    Defect1
    Selenium2Library.Click Element    ${VCEditDefectSaveBTN}
    Sleep    15
    Comment    Page Should Contain    Check has been updated successfully.
    Comment    Sleep    5
    Comment    Edit a defect
    Go to    ${AssetChecksURL}
    Sleep    5
    Selenium2Library.Click Element    ${ViewAssetcheckicon}
    Sleep    3
    Selenium2Library.Click Element    ${EditAssetCheckBTN}
    Sleep    1
    Page Should Contain    Edit mode has been enabled.
    Selenium2Library.Click Element    ${Editcheckoption}
    Sleep    2
    Page Should Contain    Trailer Coupling and Security - Safety Clip
    sleep    1
    Selenium2Library.Click Element    ${AssetCheckEditBTN}
    Sleep    2
    Selenium2Library.Click Element    ${VCEditDefectNodefect}
    Sleep    2
    Selenium2Library.Input Text    ${VCDefectcommentModel}    No defect
    sleep    2
    Selenium2Library.Click Element    ${VCEditDefectSaveBTN}
    Sleep    5
    Page Should Contain    Asset number:

Get asset details
    Go to    ${AssetDefectURL}
    sleep    5
    ${Asset defect ID}    Selenium2Library.get text    ${AssetDefectID}
    log    ${Asset defect ID}
    Set Variable    ${Asset defect ID}
    Set Global Variable    ${Asset defect ID}
    ${Asset Number}    Selenium2Library.get text    ${AssetNumberfield}
    log    ${Asset Number}
    Set Variable    ${Asset Number}
    Set Global Variable    ${Asset Number}

Asset search Reset Columns
    Go To    ${AssetSearchurl}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify Reset column functionality...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${ResetColumnBTN}
    Sleep    4
    Selenium2Library.Click Element    ${ResetColumnYesBTN}
    Sleep    2

Asset \ Search results using the “All regions” value on Asset planning page
    Go to    ${FleetPlanningpage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verifyig All Regions filter functionality...!";document.body.appendChild(el);
    sleep    2
    Selenium2Library.Click Element    ${FPAssetPlanningTab}
    sleep    2
    Selenium2Library.Click Element    ${AssetRegionDD}
    sleep    2
    Send    {ENTER}
    sleep    2
    Page Should Contain    Asset List
    Sleep    3
    ${Get Region from list}    Selenium2Library.get text    ${AssetRegionValue}
    log    ${Get Region from list}
    Set Global Variable    ${Get Region from list}
    sleep    1
    ${IsElementVisible}=    Run Keyword And Return Status    selenium2library.Element Should Be Visible    //table[@id='assetPlanningJqGrid']/tbody/tr[2]/td[6]
    Run Keyword If    '${IsElementVisible}' == 'True'    Get asset detail for region
    Run Keyword If    '${IsElementVisible}' == 'False'    Page Should Contain    No information available
    sleep    2
    Selenium2Library.Click Element    ${AssetPlanningclearBTN}
    sleep    1
    ${all region}    Selenium2Library.Get Text    ${AssetRegionDD}
    Should Be Equal As Strings    ${all region}    All regions
    Sleep    3

Asset - Search results using the “Asset Number” value on Asset planning page
    Go to    ${FleetPlanningpage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verifyig All Regions filter functionality...!";document.body.appendChild(el);
    sleep    2
    Selenium2Library.Click Element    ${FPAssetPlanningTab}
    sleep    2
    ${IsElementVisible}=    Run Keyword And Return Status    selenium2library.Element Should Be Visible    //table[@id='assetPlanningJqGrid']/tbody/tr[2]/td[6]
    Run Keyword If    '${IsElementVisible}' == 'True'    Get asset number
    Run Keyword If    '${IsElementVisible}' == 'False'    Page Should Contain    No information available
    sleep    1
    Selenium2Library.Click Element    ${AssetPlanningclearBTN}

Asset - Search results using the “All events” value on Asset planning page
    Go to    ${FleetPlanningpage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verifying Select Search filter Functionality...!";document.body.appendChild(el);
    sleep    2
    Selenium2Library.Click Element    ${FPAssetPlanningTab}
    sleep    2
    Selenium2Library.Click Element    //*[@id="s2id_asset_search_for"]/a
    sleep    1
    Selenium2Library.Click Element    ${FPSelectVal}
    Sleep    2
    Selenium2Library.Click Element    //*[@id="select2-chosen-6"]
    sleep    1
    Selenium2Library.Click Element    ${FPSeletTimeperiodTBVal}
    Sleep    2
    ${IsElementVisible}=    Run Keyword And Return Status    selenium2library.Element Should Be Visible    //table[@id='assetPlanningJqGrid']/tbody/tr[2]/td[6]
    Run Keyword If    '${IsElementVisible}' == 'True'    Get asset number details for date pass
    Run Keyword If    '${IsElementVisible}' == 'False'    Page Should Contain    No information available
    Sleep    2
    Selenium2Library.Click Element    ${AssetPlanningclearBTN}

Asset- Download/export a report on Asset planning page
    Go to    ${FleetPlanningpage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verifying Export \ Functionality...!";document.body.appendChild(el);
    sleep    2
    Selenium2Library.Click Element    ${FPAssetPlanningTab}
    sleep    2
    Selenium2Library.Click Element    //*[@id="asset_planning"]/div[2]/div/div/div[1]/div[2]/span[2]
    Sleep    5
    Page Should Contain    Vehicle List

Asset - Reset Column for Asset Planning
    Go to    ${FleetPlanningpage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:20%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verifying Reset column functionality..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${FPAssetPlanningTab}
    sleep    3
    Drag And Drop    //*[@id="jqgh_assetPlanningJqGrid_dt_annual_service_inspection_original"]    //*[@id="jqgh_assetPlanningJqGrid_dt_adr_test_original"]
    sleep    3
    Selenium2Library.Click Element    //*[@id="asset_planning"]/div[2]/div/div/div[1]/div[2]/a[1]
    Sleep    3
    Selenium2Library.Click Element    ${ResetColumnYesBTN}
    Sleep    3
    Page Should Contain    All Regions
    Sleep    3

Get asset detail for region
    ${Reg No}    Selenium2Library.get text    //table[@id='assetPlanningJqGrid']/tbody/tr[2]/td[6]
    log    ${Reg No}
    sleep    1
    ${Get Region}    Selenium2Library.get text    ${AssetRegionValue}
    log    ${Get Region}
    should match    ${Get Region}    ${Get Region from list}
    sleep    1

Get asset number
    ${Reg No}    Selenium2Library.get text    //table[@id='assetPlanningJqGrid']/tbody/tr[2]/td[6]
    log    ${Reg No}
    sleep    1
    Set Global Variable    ${Reg No}
    Selenium2Library.Click Element    //*[@id="select2-chosen-12"]
    send    ${Reg No}
    sleep    1
    send    {ENTER}
    sleep    1
    ${Get Reg No}    Selenium2Library.get text    //table[@id='assetPlanningJqGrid']/tbody/tr[2]/td[6]
    log    ${Get Reg No}
    should match    ${Get Reg No}    ${Reg No}
    sleep    1

Get asset number details for date pass
    ${Reg No}    Selenium2Library.get text    //table[@id='assetPlanningJqGrid']/tbody/tr[2]/td[6]
    log    ${Reg No}
    sleep    1
    Set Global Variable    ${Reg No}

Add a Asset on Fleet planning page
    Go to    ${FleetPlanningpage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Adding New vehicle from Fleet Planning...!";document.body.appendChild(el);
    sleep    2
    Selenium2Library.Click Element    ${FPAssetPlanningTab}
    sleep    2
    Selenium2Library.Click Element    ${AssetAdd}
    Sleep    3
    Selenium2Library.Page Should Contain    Asset Summary
    ${AssetNumberValue}    Generate Random String    6    0987654321
    Set Global Variable    ${AssetNumberValue}
    Log    ${AssetNumberValue}
    Selenium2Library.Click Element    ${AssetNumber}
    Selenium2Library.Input Text    ${AssetNumber}    ${AssetNumberValue}
    Sleep    3
    Selenium2Library.Click Element    ${AssetTypeSelection}
    Sleep    2
    Selenium2Library.Click Element    ${VSManufacturerTBVal}
    Sleep    2
    Selenium2Library.Click Element    ${AssetStatus}
    Sleep    2
    Selenium2Library.Click Element    ${AssetStatusValue}
    Selenium2Library.Click Element    ${AssetAvailability}
    Sleep    2
    Selenium2Library.Click Element    ${AssetAvailabilityValue}
    Sleep    1
    Selenium2Library.Click Element    ${AssetOwnershipStatus}
    Sleep    2
    Selenium2Library.Click Element    ${AssetOwnershipStatusValue}
    Sleep    1
    Selenium2Library.Click Element    ${AssetNNRMCompliant}
    Sleep    2
    Selenium2Library.Click Element    ${AssetNNRMCompliantValue}
    Selenium2Library.Click Element    ${AssetDivision}
    Sleep    3
    Selenium2Library.Click Element    ${VSManufacturerTBVal}
    Sleep    2
    Selenium2Library.Click Element    ${AssetRegion}
    Sleep    3
    Selenium2Library.Click Element    ${VSManufacturerTBVal}
    Sleep    3
    Selenium2Library.Click Element    ${AssetSubmit}
    Selenium2Library.Wait Until Page Contains    Data has been saved successfully.
    Sleep    2

Asset \ Search results using the “All regions” value on Asset planning page
    Go to    ${FleetPlanningpage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verifyig All Regions filter functionality...!";document.body.appendChild(el);
    sleep    2
    Selenium2Library.Click Element    ${FPAssetPlanningTab}
    sleep    2
    Selenium2Library.Click Element    ${AssetRegionDD}
    sleep    2
    Send    {ENTER}
    sleep    2
    Page Should Contain    Asset List
    Sleep    3
    ${Get Region from list}    Selenium2Library.get text    ${AssetRegionValue}
    log    ${Get Region from list}
    Set Global Variable    ${Get Region from list}
    sleep    1
    ${IsElementVisible}=    Run Keyword And Return Status    selenium2library.Element Should Be Visible    //table[@id='assetPlanningJqGrid']/tbody/tr[2]/td[6]
    Run Keyword If    '${IsElementVisible}' == 'True'    Get asset detail for region
    Run Keyword If    '${IsElementVisible}' == 'False'    Page Should Contain    No information available
    sleep    2
    Selenium2Library.Click Element    ${AssetPlanningclearBTN}
    sleep    1
    ${all region}    Selenium2Library.Get Text    ${AssetRegionDD}
    Should Be Equal As Strings    ${all region}    All regions
    Sleep    3

Asset - Search results using the “Asset Number” value on Asset planning page
    Go to    ${FleetPlanningpage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verifyig All Regions filter functionality...!";document.body.appendChild(el);
    sleep    2
    Selenium2Library.Click Element    ${FPAssetPlanningTab}
    sleep    2
    ${IsElementVisible}=    Run Keyword And Return Status    selenium2library.Element Should Be Visible    //table[@id='assetPlanningJqGrid']/tbody/tr[2]/td[6]
    Run Keyword If    '${IsElementVisible}' == 'True'    Get asset number
    Run Keyword If    '${IsElementVisible}' == 'False'    Page Should Contain    No information available
    sleep    1
    Selenium2Library.Click Element    ${AssetPlanningclearBTN}

Asset - Search results using the “All events” value on Asset planning page
    Go to    ${FleetPlanningpage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verifying Select Search filter Functionality...!";document.body.appendChild(el);
    sleep    2
    Selenium2Library.Click Element    ${FPAssetPlanningTab}
    sleep    2
    Selenium2Library.Click Element    //*[@id="s2id_asset_search_for"]/a
    sleep    1
    Selenium2Library.Click Element    ${FPSelectVal}
    Sleep    2
    Selenium2Library.Click Element    //*[@id="select2-chosen-6"]
    sleep    1
    Selenium2Library.Click Element    ${FPSeletTimeperiodTBVal}
    Sleep    2
    ${IsElementVisible}=    Run Keyword And Return Status    selenium2library.Element Should Be Visible    //table[@id='assetPlanningJqGrid']/tbody/tr[2]/td[6]
    Run Keyword If    '${IsElementVisible}' == 'True'    Get asset number details for date pass
    Run Keyword If    '${IsElementVisible}' == 'False'    Page Should Contain    No information available
    Sleep    2
    Selenium2Library.Click Element    ${AssetPlanningclearBTN}

Asset- Download/export a report on Asset planning page
    Go to    ${FleetPlanningpage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verifying Export \ Functionality...!";document.body.appendChild(el);
    sleep    2
    Selenium2Library.Click Element    ${FPAssetPlanningTab}
    sleep    2
    Selenium2Library.Click Element    //*[@id="asset_planning"]/div[2]/div/div/div[1]/div[2]/span[2]
    Sleep    5
    Page Should Contain    Vehicle List

Asset - Reset Column for Asset Planning
    Go to    ${FleetPlanningpage}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:20%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verifying Reset column functionality..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${FPAssetPlanningTab}
    sleep    3
    Drag And Drop    //*[@id="jqgh_assetPlanningJqGrid_dt_annual_service_inspection_original"]    //*[@id="jqgh_assetPlanningJqGrid_dt_adr_test_original"]
    sleep    3
    Selenium2Library.Click Element    //*[@id="asset_planning"]/div[2]/div/div/div[1]/div[2]/a[1]
    Sleep    3
    Selenium2Library.Click Element    ${ResetColumnYesBTN}
    Sleep    3
    Page Should Contain    All Regions
    Sleep    3

Get asset detail for region
    ${Reg No}    Selenium2Library.get text    //table[@id='assetPlanningJqGrid']/tbody/tr[2]/td[6]
    log    ${Reg No}
    sleep    1
    ${Get Region}    Selenium2Library.get text    ${AssetRegionValue}
    log    ${Get Region}
    should match    ${Get Region}    ${Get Region from list}
    sleep    1

Get asset number
    ${Reg No}    Selenium2Library.get text    //table[@id='assetPlanningJqGrid']/tbody/tr[2]/td[6]
    log    ${Reg No}
    sleep    1
    Set Global Variable    ${Reg No}
    Selenium2Library.Click Element    //*[@id="select2-chosen-12"]
    send    ${Reg No}
    sleep    1
    send    {ENTER}
    sleep    1
    ${Get Reg No}    Selenium2Library.get text    //table[@id='assetPlanningJqGrid']/tbody/tr[2]/td[6]
    log    ${Get Reg No}
    should match    ${Get Reg No}    ${Reg No}
    sleep    1

Get asset number details for date pass
    ${Reg No}    Selenium2Library.get text    //table[@id='assetPlanningJqGrid']/tbody/tr[2]/td[6]
    log    ${Reg No}
    sleep    1
    Set Global Variable    ${Reg No}

Download should be done
    [Arguments]    ${directory}
    [Documentation]    Verifies that the directory has only one folder and it is not a temp file.
    ...
    ...    Returns path to the file
    ${files}    List Files In Directory    ${directory}
    Length Should Be    ${files}    1    Should be only one file in the download folder
    log    ${files}
    Set Variable    ${files}
    ${file}    Join Path    ${directory}    ${files[0]}
    Log    File was successfully downloaded to ${file}
    [Return]    ${file}

Asset Defect Download/export a report on Asset defects page- test
    # create unique folder
    ${now}    Get Time    epoch
    ${download directory}    Join Path    ${OUTPUT DIR}    downloads_${now}
    Create Directory    ${download directory}
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    # list of plugins to disable. disabling PDF Viewer is necessary so that PDFs are saved rather than displayed
    ${disabled}    Create List    Chrome PDF Viewer
    ${prefs}    Create Dictionary    download.default_directory=${download directory}    plugins.plugins_disabled=${disabled}
    Call Method    ${chrome options}    add_experimental_option    prefs    ${prefs}
    Create Webdriver    Chrome    chrome_options=${chrome options}
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
    Go to    ${AssetDefectURL}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verifying download report functionality..!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${DownloadProfileIcon}
    Sleep    5
    Maximize Browser Window
    # wait for download to finish
    ${file}    Wait Until Keyword Succeeds    1 min    2 sec    Download should be done    ${download directory}

Enable telematics
    Selenium2Library.Click Element    //*[@id="uniform-is_telematics_enabled"]/span/div/div/label[2]
    sleep    2
    Selenium2Library.Click Element    //*[@id="site_configuration_submit"]
    Selenium2Library.Wait Until Element Is Visible    //*[@id="site_configuration_submit"]    timeout=60

Asset Serch Download
    # create unique folder
    ${now}    Get Time    epoch
    ${download directory}    Join Path    ${OUTPUT DIR}    downloads_${now}
    Create Directory    ${download directory}
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    # list of plugins to disable. disabling PDF Viewer is necessary so that PDFs are saved rather than displayed
    ${disabled}    Create List    Chrome PDF Viewer
    ${prefs}    Create Dictionary    download.default_directory=${download directory}    plugins.plugins_disabled=${disabled}
    Call Method    ${chrome options}    add_experimental_option    prefs    ${prefs}
    Create Webdriver    Chrome    chrome_options=${chrome options}
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
    Go To    ${AssetSearchurl}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify download functionality...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${AssetDownload}
    sleep    3
    Maximize Browser Window
    # wait for download to finish
    ${file}    Wait Until Keyword Succeeds    1 min    2 sec    Download should be done    ${download directory}

Asset Checks Download
    # create unique folder
    ${now}    Get Time    epoch
    ${download directory}    Join Path    ${OUTPUT DIR}    downloads_${now}
    Create Directory    ${download directory}
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    # list of plugins to disable. disabling PDF Viewer is necessary so that PDFs are saved rather than displayed
    ${disabled}    Create List    Chrome PDF Viewer
    ${prefs}    Create Dictionary    download.default_directory=${download directory}    plugins.plugins_disabled=${disabled}
    Call Method    ${chrome options}    add_experimental_option    prefs    ${prefs}
    Create Webdriver    Chrome    chrome_options=${chrome options}
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
    Go To    ${AssetChecksURL}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:50%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Verify download functionality...!";document.body.appendChild(el);
    Sleep    2
    Selenium2Library.Click Element    ${DownloadProfileIcon}
    sleep    3
    Maximize Browser Window
    # wait for download to finish
    ${file}    Wait Until Keyword Succeeds    1 min    2 sec    Download should be done    ${download directory}
