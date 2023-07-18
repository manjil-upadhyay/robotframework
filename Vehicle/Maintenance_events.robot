*** Settings ***
Library           Selenium2Library
Library           openpyxl.reader.excel
Library           String
Library           SikuliLibrary
Library           AppiumLibrary
Library           AutoItLibrary
Library           Collections
Resource          FMKeywords.txt
Variables         ../Image.py
Resource          FMKeywords.txt

*** Test Cases ***
MI - Annual Event
    [Documentation]    Vehicle Search
    ...    --------------------------
    ...    Verify User can Add a vehicle, edit it and basic functionality of Vehicle search page.
    ...    --------------------------
    ...    Total Run Time:
    ...    00:09:25
    [Tags]    smoke
    [Setup]
    Log in into Fleet Mastr
    Go To    ${VehicleProfile}
    Sleep    5
    Execute Javascript    var el = document.createElement("div"); \ el.setAttribute("style","position:fixed;top:20%;left:35%;background-color:yellow;font-size: 20px;height: 50px;width: 250px;"); \ el.innerHTML ="Create Vehicle Proifle..!";document.body.appendChild(el);
    Sleep    2
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
    Selenium2Library.Click Element    //*[@id="s2id_adr_test_date"]
    Sleep    1
    Selenium2Library.Click Element    //*[@id="adr_test_date"]/option[3]
    Sleep    1
    Selenium2Library.Click Element    //*[@id="s2id_compressor_service_interval"]
    Sleep    1
    Selenium2Library.Click Element    //*[@id="compressor_service_interval"]/option[3]
    Sleep    1
    Selenium2Library.Click Element    //*[@id="s2id_invertor_service_interval"]
    Sleep    1
    Selenium2Library.Click Element    //*[@id="invertor_service_interval"]/option[3]
    Sleep    1
    Selenium2Library.Click Element    //*[@id="s2id_loler_test_interval"]
    Sleep    1
    Selenium2Library.Click Element    //*[@id="loler_test_interval"]/option[3]
    Sleep    1
    Selenium2Library.Click Element    //*[@id="s2id_pmi_interval"]
    Sleep    1
    Selenium2Library.Click Element    //*[@id="pmi_interval"]/option[3]
    Sleep    1
    Selenium2Library.Click Element    //*[@id="s2id_pto_service_interval"]
    Sleep    1
    Selenium2Library.Click Element    //*[@id="pto_service_interval"]/option[3]
    Sleep    1
    Selenium2Library.Click Element    //*[@id="s2id_service_interval_type"]
    Sleep    1
    Selenium2Library.Click Element    //*[@id="service_interval_type"]/option[2]
    Sleep    1
    Selenium2Library.Click Element    //*[@id="s2id_service_inspection_interval_distance"]
    Sleep    1
    Selenium2Library.Click Element    //*[@id="service_inspection_interval_distance"]/option[2]
    Sleep    1
    Selenium2Library.Click Element    //*[@id="s2id_service_inspection_interval_distance"]
    Sleep    1
    Selenium2Library.Click Element    //*[@id="service_inspection_interval_distance"]/option[2]
    Sleep    1
    Selenium2Library.Click Element    //*[@id="s2id_tank_test_interval"]
    Sleep    1
    Selenium2Library.Click Element    //*[@id="tank_test_interval"]/option[3]
    Sleep    1
    Comment    Selenium2Library.Element Should Be Visible    ${SubmitBTN}
    Comment    Selenium2Library.Click Element    ${SubmitBTN}
    Comment    Sleep    3
    Comment    Page should contain    Data has been saved successfully.
    Comment    Sleep    2
