*** Settings ***
Library           Selenium2Library
Library           String
Variables         Variables.py

*** Test Cases ***
AssetProfile
    Login into SHL
    Create Asset Profile
    Search Asset Profile
    Search Archived Asset Profile
    Reset Columns
    Column Management
    Refresh Records
    Download Records
    Get Details of Asset Profile
    Edit Asset Profile
    Comment    Test

AssetSearch
    Login into SHL
    Create Asset Profile
    Create Asset
    Asset Quick Search
    Asset Advance Search
    Search Aechived Assets
    Reset Columns
    AssetSearch Column Management
    Reset Columns
    Refresh Records
    Download Records
    Get Details of Asset
    Edit Asset
    Get List of Checks
    Get List of Defects

*** Keywords ***
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
    Comment    Execute Javascript    window.scroll(0,500)
    Comment    Execute Javascript    Scroll into view
    Comment    ${Test}    Generate Random String    6    abcdrfg
    Comment    Set Variable    ${Test}
    Comment    Set Global Variable    ${Test}
    Comment    Log    ${Test}

Create Asset Profile
    Go To    ${AddAssetProfile}
    Click Element    ${AssetType}
    ${AssetName}    Generate Random String    6    abcdefghijklmnopqrstuvwxyz1234567890
    Set Variable    ${AssetName}
    Set Global Variable    ${AssetName}
    log    ${AssetName}
    Input Text    ${AssetType}    ${AssetName}
    Sleep    1
    Click Element    ${AssetCategory}
    Sleep    1
    Click Element    ${SelectAssetCategory}
    Click Element    ${AssetSubCategory}
    Sleep    1
    Click Element    ${SelectAssetSubCategory}
    Click Element    ${AssetOdometerSetting}
    Sleep    1
    Click Element    ${OdometerSettingOption}
    Click Element    ${AssetManufacturer}
    Input Text    ${AssetManufacturer}    ${AssetManufacturerText}
    Sleep    1
    Click Element    ${AssetModel}
    Input Text    ${AssetModel}    ${AssetModelText}
    Click Element    ${AssetFuelType}
    Sleep    1
    Click Element    ${SelectAssetFuelType}
    Sleep    1
    Click Element    ${AssetEngineType}
    Sleep    1
    Click Element    ${SelectAssetFuelType}
    Click Element    ${AssetServiceFrequency}
    Sleep    1
    Click Element    ${SelectAssetServiceFrequency}
    Sleep    1
    Click Button    ${AssetCreationSubmit}
    Sleep    5

Search Asset Profile
    Sleep    2
    Go To    ${AssetProfilePage}
    Sleep    2
    Wait Until Page Contains    Asset Profiles
    Click Element    ${AssetSearchFilter}
    Sleep    5
    Click Element    //div[@id='select2-drop']
    Sleep    2
    Click Element    ${AssetSearchInputField}
    Input Text    ${AssetSearchInputField}    ${AssetName}
    Press Key    ${AssetSearchInputField}    \\13
    Sleep    3
    Page Should Contain    ${AssetName}
    Sleep    3
    Click Element    ${AssetClearSearch}
    Sleep    1
    Comment    ${AssetName}    8,11

Search Archived Asset Profile
    Sleep    1
    Click Element    ${ArchivedAssetProfile}
    Execute Javascript    window.scrollTo(0,500)
    Sleep    2
    Page Should Contain Element    ${ArchivedStatusItem}
    Sleep    1
    Execute Javascript    window.scrollTo(0,0)
    Sleep    2
    Click Element    ${ArchivedAssetProfile}
    Reload Page

Reset Columns
    Go To    ${AssetSearchurl}
    Sleep    1
    Click Element    ${ResetColumnBTN}
    Wait Until Page Contains    Confirmation
    Sleep    2
    Click Element    ${ResetColumnYesBTN}

Column Management
    Sleep    1
    Click Element    ${ResertColumnDD}
    Sleep    1
    Wait Until Page Contains    Column Management
    Sleep    1
    Click Element    ${AssetColumnType}
    Click Element    ${AssetColumnCategory}
    Click Element    ${AssetColumnSubCategory}
    Click Element    ${AssetColumnManufacturer}
    Click Element    ${AssetColumnModel}
    Click Element    ${AssetColumnFuelType}
    Click Element    ${AssetColumnModelProfileStatus}
    Sleep    2
    Execute Javascript    window.scrollTo(0,50)
    Sleep    1
    Click Element    ${AssetColumnSubmit}
    Sleep    1
    Page Should Contain    Engine Type
    Reset Columns

Refresh Records
    Sleep    2
    Click Element    ${AssetRefresh}

Download Records
    Sleep    2
    Click Element    ${AssetDownload}

Get Details of Asset Profile
    Sleep    3
    Wait Until Page Contains    Asset Profiles
    Execute Javascript    window.scrollTo(0,0)
    Sleep    3
    Click Element    ${AssetSearchFilter}
    Sleep    5
    Click Element    //div[@id='select2-drop']
    Click Element    ${AssetSearchInputField2}
    Sleep    2
    Input Text    ${AssetSearchInputField2}    ${AssetName}
    Sleep    2
    Press Key    ${AssetSearchInputField2}    \\13
    Sleep    3
    Page Should Contain    ${AssetName}
    Sleep    3
    Comment    Execute Javascript    window.scrollBy(x,y)
    Click Element    ${AssetProfileDetails}
    Sleep    3
    Wait Until Page Contains    Asset Profile Details
    Page Should Contain    ${AssetName}
    Page Should Contain    ${AssetManufacturerText}
    Page Should Contain    ${AssetModelText}
    Sleep    1
    Comment    ${AssetName}    5,8,13

Edit Asset Profile
    Go To    ${AssetProfilePage}
    Sleep    4
    Click Element    ${AssetSearchFilter}
    Sleep    1
    Click Element    ${AssetSearchInputField}
    Input Text    ${AssetSearchInputField}    ${AssetName}
    Press Key    ${AssetSearchInputField}    \\13
    Sleep    3
    Page Should Contain    ${AssetName}
    Sleep    3
    Click Element    ${AssetProfileEdit}
    Sleep    3
    Page Should Contain    Edit Asset Profile
    Click Element    ${AssetSubCategory}
    Sleep    1
    Click Element    ${ChangeAssetSubCategory}
    Sleep    1
    Click Element    ${AssetProfileC02}
    Input Text    ${AssetProfileC02}    2
    Click Element    ${AssetADRTestInterval}
    Sleep    2
    Click Element    ${AssetADRTestIntervalValue}
    Sleep    1
    Click Element    ${AssetPMIInterval}
    Sleep    2
    Click Element    ${AssetADRTestIntervalValue}
    Sleep    1
    Click Element    ${AssetRubberIntegrityTestInterval}
    Sleep    2
    Click Element    ${AssetADRTestIntervalValue}
    Sleep    1
    Click Element    ${AssetTankTestInterval}
    Sleep    2
    Click Element    ${AssetADRTestIntervalValue}
    Click Element    ${AssetCreationSubmit}
    Wait Until Page Contains    Data has been saved successfully.
    Sleep    2
    Comment    ${AssetName}

Test
    Sleep    5
    Selenium2Library.Go To    https://uat-shl.fleetmastr.com/assets/create

Create Asset
    Selenium2Library.Go To    ${AssetSearchurl}
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
    Click Element    ${AssetDivisionValue}
    Sleep    2
    Selenium2Library.Click Element    ${AssetRegion}
    Sleep    3
    Selenium2Library.Click Element    ${AssetRegionValue}
    Sleep    3
    Selenium2Library.Click Element    ${AssetSubmit}
    Selenium2Library.Wait Until Page Contains    Data has been saved successfully.
    Sleep    2

Asset Quick Search
    Go To    ${AssetSearchurl}
    Sleep    2
    Click Element    ${AssetQuickSearchButton}
    Click Element    ${AssetQuickSearchNumber}
    Sleep    2
    Click Element    ${AssetQuickSearchNumberField}
    Input Text    ${AssetQuickSearchNumberField}    ${AssetNumberValue}
    Press Key    ${AssetQuickSearchNumberField}    \\13
    Sleep    2
    Page Should Contain Element    //a[contains(text(),'${AssetNumberValue}')]
    Sleep    2
    Click Element    ${AssetQuickSearchClearFilter}
    Sleep    2

Asset Advance Search
    Sleep    1
    Go To    ${AssetSearchurl}
    Sleep    2
    Click Element    ${AssetAdvanceSearchButton}
    Sleep    2
    Click Element    ${AssetAdvanceSearchType}
    Sleep    3
    Click Element    ${AssetAdvanceSearchTypeField}
    Input Text    ${AssetAdvanceSearchTypeField}    ${AssetName}
    Sleep    1
    Press Key    ${AssetAdvanceSearchTypeField}    \\13
    Sleep    2
    Wait Until Page Contains Element    //a[contains(text(),'${AssetNumberValue}')]
    Sleep    2
    Comment    Reload Page
    Sleep    2
    Click Element    ${AssetAdvanceSearchClearFilter}
    Sleep    2

Search Aechived Assets
    Sleep    1
    Go To    ${AssetSearchurl}
    Sleep    3
    Click Element    ${ArchivedAsset}
    Sleep    2
    Page Should Contain Element    ${ArchivedAssetAssetion}
    Sleep    2
    Click Element    ${ArchivedAsset}
    Sleep    1

AssetSearch Column Management
    Go To    ${AssetSearchurl}
    Sleep    1
    Click Element    ${ResertColumnDD}
    Sleep    1
    Wait Until Page Contains    Column Management
    Sleep    1
    Click Element    ${AssetNumberSearch}
    Click Element    ${AssetTypeSearch}
    Click Element    ${AssetCategorySearch}
    Click Element    ${AssetSubCategorySearch}
    Click Element    ${AssetOwnershipSearch}
    Click Element    ${AssetStatusSearch}
    Click Element    ${AssetAvailabilitySearch}
    Sleep    2
    Click Element    ${ModelSubmitBTN}
    Sleep    3
    Page Should Contain Element    ${ColumnManageAssertion}

Get Details of Asset
    Sleep    3
    Go To    ${AssetSearchurl}
    Sleep    5
    Execute Javascript    window.scrollTo(0,0)
    Sleep    2
    Click Element    ${AssetQuickSearchButton}
    Click Element    ${AssetQuickSearchNumber}
    Sleep    2
    Click Element    ${AssetQuickSearchNumberField}
    Input Text    ${AssetQuickSearchNumberField}    ${AssetNumberValue}
    Press Key    ${AssetQuickSearchNumberField}    \\13
    Sleep    2
    Page Should Contain Element    ${AssetExist}
    Sleep    2
    Click Element    ${AssetDetailsBTN}
    Sleep    3
    Page Should Contain    Details
    Page Should Contain Element    ${AssetNumberOnDetailsPage}
    Sleep    2

Edit Asset
    Sleep    1
    Go To    ${AssetSearchurl}
    Sleep    2
    Click Element    ${AssetQuickSearchButton}
    Click Element    ${AssetQuickSearchNumber}
    Sleep    2
    Click Element    ${AssetQuickSearchNumberField}
    Input Text    ${AssetQuickSearchNumberField}    ${AssetNumberValue}
    Press Key    ${AssetQuickSearchNumberField}    \13
    Sleep    2
    Page Should Contain Element    ${AssetExist}
    Sleep    2
    Click Element    ${AssetEdit}
    Sleep    2
    Wait Until Page Contains    Asset Summary
    Click Element    ${OdometerReadingField}
    Input Text    ${OdometerReadingField}    5
    Click Element    ${RegistrationDate}
    Sleep    1
    Click Element    ${RegDateVal1}
    Sleep    1
    Click Element    ${RegDateVal2}
    Sleep    1
    Click Element    ${ReplacementDate}
    Sleep    2
    Click Element    ${ReplaceDateVal1}
    Sleep    1
    Click Element    ${ReplaceDateVal2}
    Click Link    ${SerialNumber}
    Input Text    ${SerialNumber}    123
    Sleep    2
    Click Element    ${AssetSubmit}

Get List of Checks
    Sleep    1
    Go To    ${AssetSearchurl}
    Sleep    2
    Click Element    ${AssetQuickSearchButton}
    Click Element    ${AssetQuickSearchNumber}
    Sleep    2
    Click Element    ${AssetQuickSearchNumberField}
    Input Text    ${AssetQuickSearchNumberField}    ${AssetNumberValue}
    Press Key    ${AssetQuickSearchNumberField}    \13
    Sleep    2
    Page Should Contain Element    ${AssetExist}
    Sleep    2
    Click Element    ${AssetChecks}
    Sleep    3
    Page Should Contain    Recent Asset Checks

Get List of Defects
    Sleep    1
    Comment    AssetDefects
    Go To    ${AssetSearchurl}
    Sleep    2
    Click Element    ${AssetQuickSearchButton}
    Click Element    ${AssetQuickSearchNumber}
    Sleep    2
    Click Element    ${AssetQuickSearchNumberField}
    Input Text    ${AssetQuickSearchNumberField}    ${AssetNumberValue}
    Press Key    ${AssetQuickSearchNumberField}    \13
    Sleep    2
    Page Should Contain Element    ${AssetExist}
    Sleep    2
    Click Element    ${AssetDefects}
    Sleep    3
    Page Should Contain    Defects List
    Sleep    1
