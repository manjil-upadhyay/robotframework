#=URLs========
#FleetmastrQA        =   "https://fleetmastr.aecordigitalqa.com/home"
#FMTelematicspage    =   "https://fleetmastr.aecordigitalqa.com/telematics/index"
#Settingspage        =   "https://fleetmastr.aecordigitalqa.com/settings"
#IncidentReportspage =   "https://fleetmastr.aecordigitalqa.com/incidents"
#CreateVehiclePage   =   "https://fleetmastr.aecordigitalqa.com/vehicles/create"
#SearchVehiclePage   =   "https://fleetmastr.aecordigitalqa.com/vehicles"
#EditVehicleURL      =   "https://fleetmastr.aecordigitalqa.com/vehicles/120/edit"
#ReportDefectURL     =   "http://fleetmastr.aecordigitalqa.com/defects"
#MessagesURL         =   "http://fleetmastr.aecordigitalqa.com/messages"
#LogoutURL           =   "http://fleetmastr.aecordigitalqa.com/auth/logout"

client = 'shl'

FleetmastrQA        =   "https://uat-"+client+".fleetmastr.com/"
FMTelematicspage    =   "https://uat-"+client+".fleetmastr.com/telematics/index"
VehicleProfile      =   "https://uat-"+client+".fleetmastr.com/profiles"
Settingspage        =   "https://uat-"+client+".fleetmastr.com/settings"
IncidentReportspage =   "https://uat-"+client+".fleetmastr.com/incidents"
CreateVehiclePage   =   "https://uat-"+client+".fleetmastr.com/vehicles/create"
SearchVehiclePage   =   "https://uat-"+client+".fleetmastr.com/vehicles"
EditVehicleURL      =   "https://uat-"+client+"+.fleetmastr.com/vehicles/120/edit"
ReportDefectURL     =   "http://uat-"+client+"+.fleetmastr.com/defects"
MessagesURL         =   "http://uat-"+client+".fleetmastr.com/messages"
LogoutURL           =   "http://uat-"+client+".fleetmastr.com/auth/logout"
Vehicles            =   "https://uat-"+client+".fleetmastr.com/vehicles"
VehicleDefetpage    =   "https://uat-"+client+".fleetmastr.com/defects"
ReportIncidentPage  =   "https://uat-"+client+".fleetmastr.com/incidents"
FleetPlanningpage   =   "https://uat-"+client+".fleetmastr.com/fleet_planning"
Messagespage        =   "https://uat-"+client+".fleetmastr.com/messages"
Workshops           =   "https://uat-"+client+".fleetmastr.com/workshops"
UserManagement      =   "https://uat-"+client+".fleetmastr.com/users"
VehicleCheksPage    =   "https://uat-"+client+".fleetmastr.com/checks"
Reportspage         =   "https://uat-"+client+".fleetmastr.com/reports"
Asseturl            = "https://uat-"+client+".fleetmastr.com/login"
AssetProfilePage    = "https://uat-"+client+".fleetmastr.com/asset_profiles"
AddAssetProfile     = "https://uat-"+client+".fleetmastr.com/asset_profiles/create"
AssetSearchurl      = "https://uat-"+client+".fleetmastr.com/assets"
AssetDefectURL      =  "https://uat-"+client+".fleetmastr.com/assets/defect"
AssetChecksURL      =  "https://uat-"+client+".fleetmastr.com/assets/checks"

#=========website========================

UsernameTB           =   '//input[@type="text"]'
UserID               =   'admin@imastr.com'
PasswordTB          =   '//input[@type="password"]'
UserPWD             =   'aecor2021'
LoginBTN            =   '//*[@id="register-submit-btn"]'
AdminDD             =   'xpath=/html/body/div[1]/div/div[2]/div[2]/ul/li[2]/a'
LogoutUser          =   '//a[@href="https://uat-'+client+'.fleetmastr.com/auth/logout"]'
TelematicsXP        =   '//*[@id="s2id_is_telematics_enabled"]'
SaveVehicleDetails  =   '//*[@id="saveVehicleBtn"]'
EntervehicleRegTB   =   '//*[@id="select2-chosen-3"]'
SendMessageXP       =   "//a[contains(text(),'Send message')]"
NoTemplateSelectedDD    =   "//div[@class='col-md-6']//button[text()='No template selected']"
TestMarchTemplate   =   "//div[@class='dropdown template-list-dropdown message_dropdown load-template-div open']//a[contains(text(),'Test March')]"
StandardTemplate    =   "//div[@class='dropdown template-list-dropdown message_dropdown load-template-div open']//a[contains(text(),'standard message')]"
UsersDD             =   "//div[@class='panel-group accordion message-checkbox']//a[@class='accordion-toggle accordion-toggle-styled collapsed'][contains(text(),'Users')]"
SelectUserXP        =   "//div[@id='tab_5']//li[34]//div[1]//label[1]//div[1]//span[1]//input[1]"
SendMessageBTN      =   "xpath=(.//button[contains(., 'Send')][@type='submit'])[1]"
ConfirmSendBTN      =   "xpath=.//button[contains(., 'Yes')][@type='button']"
MessageHistoryReportBTN =   "xpath=((.//td[contains(., '1')])[3]/following::i)[1]"
MessageHistoryReportCloseBTN    =   "xpath=.//h4[contains(normalize-space(.), 'Report Details')]/following::i"

#===========================Dashboard (Fleet statastic=====================

#===Vehicle Fleet Statistics===============================================
RoadworthyVehicles   = '//*[@id="roadworthy-vehicles-count"]'
Vehicles_other       = '//*[@id="vehicles-with-defects-count"]'
VehiclesOffRoad      = '//*[@id="vor-vehicle-counts"]'
CountRoadworthyVehicles =   '//*[@id="roadworthy-vehicles-count"]'
CountRoadworthy_other   =   '//*[@id="vehicles-with-defects-count"]'
CountVehicleoffroad     =   '//*[@id="vor-vehicle-counts"]'
Countpagination           =   '//*[@id="jqGridPager_left"]/div'

#===Today's Vehicle Checks===================================================
Checkedtoday        =  '//*[@id="total-checks-count"]'
Notcheckedtoday     =   '//*[@id="total-unchecks-count"]'
Roadworthy          =   '//*[@id="roadworthy-checks-count"]'
Safetooperate     =   '//*[@id="safe-to-operate-checks-count"]'
Unsafetooperate   =  '//*[@id="dashboard-page"]/div[4]/div/div/div[5]/a/div/div[2]/div/div/div' 

#===Vehicles Off Road=========================================================
VORAllRegionDD         =   '//*[@id="select2-chosen-1"]'
SelectOption            =   'xpath=(.//div[contains(normalize-space(.), "Head Office")])[last()]'
                       
#======Upcoming Inspections=================================================
UIAllRegionDD       =   '//*[@id="select2-chosen-2"]'

# DP = Date passed
DPAnnualservice     =   '//*[@id="dashboard-page"]/section[1]/div/section/div/div/div[1]/div/div[2]/div/div[2]/a/div'
DPNextService       =   '//*[@id="dashboard-page"]/section[1]/div/section/div/div/div[1]/div/div[2]/div/div[8]/a/div'
DPTachoService      =   '//*[@id="dashboard-page"]/section[1]/div/section/div/div/div[1]/div/div[2]/div/div[10]/a/div'
#NXT7 = Next 7 days
NXT7AnnualSerice    =   '//*[@id="dashboard-page"]/section[1]/div/section/div/div/div[2]/div/div[2]/div/div[2]/a/div'
NXT7NextService     =   '//*[@id="dashboard-page"]/section[1]/div/section/div/div/div[2]/div/div[2]/div/div[8]/a/div'
NXT7TachoService    =   '//*[@id="dashboard-page"]/section[1]/div/section/div/div/div[2]/div/div[2]/div/div[10]/a/div'
#NXT8 = Next 8-14 days
NXT8AnnualSerice    =   '//*[@id="dashboard-page"]/section[1]/div/section/div/div/div[3]/div/div[2]/div/div[2]/a/div'
NXT8NextService     =   '//*[@id="dashboard-page"]/section[1]/div/section/div/div/div[3]/div/div[2]/div/div[8]/a/div'
NXT8TachoService    =   '//*[@id="dashboard-page"]/section[1]/div/section/div/div/div[3]/div/div[2]/div/div[10]/a/div'
#NXT8 = Next 15=30 days
NXT15AnnualSerice    =   '//*[@id="dashboard-page"]/section[1]/div/section/div/div/div[4]/div/div[2]/div/div[2]/a/div'
NXT15NextService     =   '//*[@id="dashboard-page"]/section[1]/div/section/div/div/div[4]/div/div[2]/div/div[8]/a/div'
NXT15TachoService    =   '//*[@id="dashboard-page"]/section[1]/div/section/div/div/div[4]/div/div[2]/div/div[10]/a/div'

#======Upcoming Expires=================================================
UEAllRegionDD       =   '//*[@id="select2-chosen-3"]'

# DP = Date passed
DPMaintenancService   =   '//*[@id="dashboard-page"]/section[2]/div/div/div[1]/div/div[2]/div/div[1]/a/div'
DPMOTService          =   '//*[@id="dashboard-page"]/section[2]/div/div/div[1]/div/div[2]/div/div[2]/a/div'
DPTaxService          =   '//*[@id="dashboard-page"]/section[2]/div/div/div[1]/div/div[2]/div/div[3]/a/div'
#NXT7 = Next 7 days  
NXT7MaintenancService =   '//*[@id="dashboard-page"]/section[2]/div/div/div[2]/div/div[2]/div/div[1]/a/div'
NXT7MOTService        =   '//*[@id="dashboard-page"]/section[2]/div/div/div[2]/div/div[2]/div/div[2]/a/div'
NXT7TaxService        =   '//*[@id="dashboard-page"]/section[2]/div/div/div[2]/div/div[2]/div/div[3]/a/div'
#NXT8 = Next 8-14 days
NXT8MaintenancService   =   '//*[@id="dashboard-page"]/section[2]/div/div/div[3]/div/div[2]/div/div[1]/a/div'
NXT8MOTService          =   '//*[@id="dashboard-page"]/section[2]/div/div/div[3]/div/div[2]/div/div[2]/a/div'
NXT8TaxService          =   '//*[@id="dashboard-page"]/section[2]/div/div/div[3]/div/div[2]/div/div[3]/a/div'
#NXT8 = Next 15=30 days
NXT15MaintenancService   =   '//*[@id="dashboard-page"]/section[2]/div/div/div[4]/div/div[2]/div/div[1]/a/div'
NXT15MOTService          =   '//*[@id="dashboard-page"]/section[2]/div/div/div[4]/div/div[2]/div/div[2]/a/div'
NXT15TaxService          =   '//*[@id="dashboard-page"]/section[2]/div/div/div[4]/div/div[2]/div/div[3]/a/div'

#==============Vehicle Profile Page=========================================================================
vehicleProfilepage      =   '//div[@class="portlet-title"]'
#AddnewvehicleprofileBTN =   'xpath=//a[@href=""https://uat-"+client+".fleetmastr.com/profiles/create""]'
AddnewvehicleprofileBTN =   'xpath=/html/body/div[2]/div[2]/div/section/div[2]/div/div/div[1]/div[2]/a[2]'
TypeTB                  =   'xpath=(.//label[contains(., "Type*:")]/following::input[@type="text"])[1]'
CategoryTB              =   "//div[@id='s2id_vehicle_category']"
CategoryTBVal           =   "//div[contains(text(),'Non-HGV')]"
SubcategoryTB           =   "//div[@id='s2id_vehicle_subcategory']"
SubcategoryTBVal        =   "//div[contains(text(),'LCV')]"
OdometerSettingTB       =   "//div[@id='s2id_odometer_setting']"
OdometerSettingTBVal    =   "//div[contains(text(),'Miles')]"
UsageTB                 =   "//div[@id='s2id_usage_type']"
UsageTBVal               =   "//div[contains(text(),'Commercial')]"
ManufacturerTB          =   "//input[@id='manufacturer']"
ManufacturerTBVal       =  "QAM"
ModelTB                 =   "//input[@id='model']"
ModelTBVal              =   "QA1"
FuelTypeTB              =   "//div[@id='s2id_fuel_type']"
FuelTypeTBval           =   "//div[contains(text(),'Generic')]"
EngineTypeTB            =   "//div[@id='s2id_engine_type']"
EngineTypeTBVal         =   "//div[contains(text(),'Generic')]"
SubmitBTN               =   "//button[@id='submit-button']"
SerchbyvehicleprofiletypeTB =   "//div[@id='select2-drop']"
SerchvehicleprofileSearchBTN    =   "//input[@id='s2id_autogen1_search']"
SelectSearch           =   "//button[@id='searchType']"
EditVehicleProfileBTN   =   "xpath=/html/body/div[2]/div[2]/div/section/div[1]/div/div/form/div/div/div/div[2]/div/div/button[2]"
SearchProfileTB         =   "//div[@id='s2id_profileType']"
SearchProfileDD         =   "xpath=/html/body/div[2]/div[2]/div/section/div[1]/div/div/form/div/div/div/div[1]/div/div"
ProfileEditIcon         =   "//a[@title='Edit']"
BodybuilderTB           =   "//input[@id='body_builder']"
GrossVehicleTB          =   "//input[@id='gross_vehicle_weight']"
TyreSizeTB              =   "//input[@id='tyre_size_drive']"
TyresizesteerTB         =   "//input[@id='tyre_size_steer']"
TyrePressureTB          =   "//input[@id='tyre_pressure_drive']"
TyrePressuresteerTB     =   "//input[@id='tyre_pressure_steer']"
NutSizeTB               =   "//input[@id='nut_size']"
RetorqueTB              =   "//input[@id='re_torque']"
LengthTB                =   "//input[@id='length']"
WidhtTB                 =   "//input[@id='width']"
HeightTB                =   "//input[@id='height']"
Co2TB                   =   "//input[@id='co2']"
ResertColumnDD          =   "//span[@class='m5 jv-icon jv-chevron-square-down js-show-hide-col-bt']"
ColumnMgtModel          =   "//div[@id='colcntjqGrid']"
FuelTypeCB              =   "//div[@id='uniform-col_fuel_type']"
EndineTypeCB            =   "//div[@id='uniform-col_engine_type']"
OilGradeTB              =   "//div[@id='uniform-col_oil_grade']"
ProfileStatusCB         =   "//div[@id='uniform-col_profile_status']"
GrossVehicleWeightTB    =   "//div[@id='uniform-col_gross_vehicle_weight']"
BodyBuilderCB           =   "//div[@id='uniform-col_body_builder']"
Co2CB                   =   "//div[@id='uniform-col_co2']"
ModelSubmitBTN          =   "//a[@id='dData']"
ResetColumnBTN          =   "//a[contains(text(),'Reset columns')]"
ResetColumnYesBTN       =   "//button[contains(text(),'Yes')]"
DownloadProfileIcon  =   '//span[@class="m5 jv-icon jv-download"]'
ProfilePageHeader       =   "//h1[@class='page_title']"
VehicleProfileText      =   "//div[@class='portlet-title']"
#=============================Vehicle search page==========================
# (VS=Vehicle Search)
CheckedTodayBTN         =   "//span[@id='vehicle-filter-today']"
NotCheckedTodayBTN      =   "//span[@id='vehicle-filter-not-today']"
AllBTN                  =   "//span[@id='vehicle-filter-all']"
AdvancedSearchTB        =   "//a[contains(text(),'Advanced Search')]"
VSManufacturerTB          =   "//div[@id='s2id_manufacturer']"
VSManufacturerTBVal      =   "//div[contains(text(),'QA')]"
VSSearchBTN             =   '//*[@id="vehicles-advanced-filter-form"]/div/div[5]/div/button[1]'
VSClearBTN              =   '//*[@id="vehicles-advanced-filter-form"]/div/div[5]/div/button[2]'
VSModelBTN              =   "//span[contains(text(),'All models')]"
VSTypeDD                =   "//div[@id='s2id_type']"
VSTypeDDVal             =   "//div[contains(text(),'Aecor')]"
VSQuickSearh            =   "//a[contains(text(),'Quick Search')]"
VSVehicleStatusDD       =   "//div[@id='s2id_status']"
VSVehicleStatusDDval    =   "//div[contains(text(),'Roadworthy')]"
VSVehicleStatusDDval1    =   "//div[contains(text(),'Awaiting kit')]"
VSSearhBTN1             =   '//*[@id="vehicles-quick-filter-form"]/div/div[1]/div/div[2]/div/div/button[1]'
VSClearBTN1             =   '//*[@id="vehicles-quick-filter-form"]/div/div[1]/div/div[2]/div/div/button[2]'
VSRegionDD              =   "//div[@id='s2id_region']"   
VSRegionDDVal           =   "//div[contains(text(),'Bristol (BS Bristol Schools)')]"
VSRegistrationTB        =   "//div[@id='s2id_registration']"
VSRegistrationTBSearchbox       =   "//input[@id='s2id_autogen2_search']"
VSSearchbutton          =   'xpath:(.//i[contains(normalize-space(@class), "jv-icon jv-search")])[1]'
VSClearButton           =   'xpath:(.//i[contains(normalize-space(@class), "jv-icon jv-close")])[2]'
VSSearchBTN2            =   '//button[@class="btn btn-h-45 red-rubine" and @type="submit"]'
VSClearBTN2             =   '//button[@class="btn js-vehicle-grid-clear-btn btn-h-45 grey-gallery "]'


#========================Add/Edit vehicle==================================
AddNewVehicleBTN        =   "//a[contains(text(),'Add new vehicle')]"
RegistrationTB           =   "//input[@id='registration']" 
TypeDD                  =   "//div[@id='s2id_vehicle_type_id']"
TypeDDSearchbox         =   "//input[@id='s2id_autogen12_search']"
VehicleStatusDD         =   "//div[@id='s2id_status']"
VehicleStatusDDsearchbox    =   "//input[@id='s2id_autogen10_search']"
OwnershipStatusDD       =   "//div[@id='s2id_staus_owned_leased']"
OwnershipStatusDDSearchbox   =   "//input[@id='s2id_autogen11_search']"
VehicleDivisionDD       =   "//div[@id='s2id_vehicle_division_id']"
VehicleDivisionDDsearchbox       =   "//input[@id='s2id_autogen13_search']"
VehicleRegionDD         =   "//div[@id='s2id_vehicle_region_id']"
VehicleRegionDD         =   "//div[@id='s2id_vehicle_region_id']"
VehicleRegionDDSearchbox         =   "xpath=/html/body/div[13]/div/input"
TelematicsDD            =   "//div[@id='s2id_is_telematics_enabled']"
TelematicsDDVal         =   "//div[contains(text(),'No')]"
WebfleetRegistrationTB  =   "//input[@name='webfleet_registration']"
CreateVehicleSaveBTN    =   "//button[contains(text(),'Save')]"
OdometerReadingTB       =   '//input[@id="last_odometer_reading"]'
P11DListTB              =   "//input[@id='P11D_list_price']"
ContractID              =   "//input[@id='contract_id']"
RepairMaintenancelocation  =   "//div[@id='s2id_vehicle_repair_location_id']"
RepairMaintenancelocationSearchbox = "//input[@id='s2id_autogen14_search']"
PermittedannualmileageTB    =   "//input[@id='permitted_annual_mileage']"
EditSaveBTN             =   "//button[@id='saveVehicleBtn']"
DetailsIcon             =   "//a[@title='Details']"
DocumentSection         =   "//a[contains(text(),'Documents')]"
AddNewDocumentBTN       =   "//a[contains(text(),'Add new document')]"
VehicleDocUploadButton  =   "xpath=/html/body/div[14]/div/div[2]/form/table/tbody/tr/td[6]/button[2]"
VehicleDocCloseIcon     =   "xpath=/html/body/div[14]/div/div[1]/a"
VSManufacturerCB        =   "//div[@id='uniform-col_manufacturer']"
VSmodelCB               =   "//div[@id='uniform-col_model']"
VSStatusCB              =   "//div[@id='uniform-col_status']"
VSCheckCB               =   "//div[@id='uniform-col_checkid']"
VSCheckCB               =   "//div[@id='uniform-col_checkid']"
VSCheckedByCB           =   "//div[@id='uniform-col_createdBy']"
VSCreatedByCB           =   "//div[@id='uniform-col_createdBy']"
ColumnMGTCloseBTN       =   "//a[@id='dData']"
DownlloadPDFIcon        =   '//span[@class="m5 jv-icon jv-download"]'

#==================Vehicle Defect page==================================
AddeNewDefectBTN        =   "//a[@href='https://uat-"+client+".fleetmastr.com/checks/create']"
OdometerTB              =   "//input[@id='odometer-reading']"
TrailerattachedDD       =   "xpath=/html/body/div[2]/div[2]/div/section/div[3]/div[1]/div/div[2]/div/div/div[3]/div/div/a"
TrailerattachedDDVal    =   "//div[contains(text(),'No')]"
AddDefecrConfirmBTN     =   "//button[contains(text(),'Confirm')]"
LeaksDefect             =   "xpath=/html/body/div[2]/div[2]/div/section/div[3]/div[1]/div/div[2]/div/div/div[1]/div/div[2]/div/div[1]"
WaterleaksDefect        =   "xpath=/html/body/div[2]/div[2]/div/section/div[3]/div[1]/div/div[2]/div/div/div[1]/div/div[2]/div/div[2]/div[1]/div/div/div[5]/p/button"
DefectSaveBTN           =   "xpath=/html/body/div[2]/div[2]/div/section/div[3]/div[2]/div/div/div[3]/div/button[2]"
DefectSafeTooperateBTN  =   "//button[contains(text(),'Safe to operate')]"
EnterDefectIDTB         =   "//input[@id='defect_id']"
DefectSearchBTN         =   '//button[@class="btn btn-h-45 red-rubine pull-left js-quick-search-btn"]'
DefectSearchClearBTN    =   '//button[@id="vehicle-registration"]'
DefectEditBTN           =   "//a[@title='Edit']"
AddNewCommentArea       =   "//textarea[@name='comments']"
SaveCommentBTN          =   "//input[@id='saveComment']"
ViewDefectIcon          =   "xpath=/html/body/div[2]/div[2]/div/section/div[3]/div/div/div[2]/div/div/div[4]/div[3]/div[1]/table/tbody/tr[2]/td[29]/a[1]"
DefectIDCB              =   "//div[@id='uniform-col_id']"
CategortCB              =  "//div[@id='uniform-col_page_title']"
AllocatedToCB           =   "//div[@id='uniform-col_workshop_name']"
DefectStatusCB          =   "//div[@id='uniform-col_status']"
DateAddedToFleetCB      =   "//div[@id='uniform-col_dt_added_to_fleet']"
VehiclecategoryCB       =   "//div[@id='uniform-col_vehicle_category']"
#================Incident Reports==========================
AddNewIncidentBTN       =   '//*[@id="showIncidentReportModal"]'
CreateNewIncidentReg    =   '//*[@id="s2id_incident_registration"]/a'
DateandTimeIcon         =   '//*[@class="input-group-btn"]'
SelectDateOfIncident    =   'xpath=/html/body/div[9]/div[3]/table/tbody/tr[2]/td[6]'
SelectTimeofIncident    =   'xpath=/html/body/div[9]/div[2]/table/tbody/tr/td/span[15]'
SelectTimeofIncident    =   'xpath=/html/body/div[9]/div[2]/table/tbody/tr/td/span[15]'
SelectMinutesofIncident =   'xpath=/html/body/div[9]/div[1]/table/tbody/tr/td/span[11]'
TypeOfIncident          =   '//*[@id="s2id_incident_type"]'
Classification          =   '//*[@id="s2id_classification"]/a'
ReportedtoInsurance     =   '//*[@id="addIncidentReport"]/div[2]/div/div/div[5]/div/div/div[2]/label'
IncidentUploadBTN       =   '//*[@id="upload-media-modal-table"]/tbody/tr/td[3]/button[2]'
IncidentSaveBTN         =   '//*[@id="addIncidentReportSave"]'
ViewIncidentIcon        =   '//*[@class="jv-icon jv-find-doc text-decoration icon-big"]'
IncidentNo              =   '//*[@id="incident-details"]/tbody/tr[1]/td[2]'
EnterIncidentIDTB       =   '//*[@id="incident_id"]'
CreatedByTB             =   '//*[@id="s2id_created_by"]'
Incidentallocatedto     =   '//*[@id="incident-allocated-to-edit"]'
IncidentallocatetoSearch    =   '//*[@id="s2id_autogen1"]'
IncidentallocatetoSearchTB  =   '//*[@id="s2id_autogen2_search"]'
IncidentAllocatedtoSaveBTN  =   "//button[@type='submit']"
IncidentDateCB          =   "//div[@id='uniform-col_incident_date_time']"
IncidentSatusCB         =   "//div[@id='uniform-col_incidentStatus']"
IncidentAllocatedToCB           =   "//div[@id='uniform-col_allocated_to']"

#============================Fleet Plnning page============================
FPaddnewvehicle        =   "xpath=.//a[contains(normalize-space(.), 'Add vehicle')]"
FPallregionDD          =    '//*[@id="select2-chosen-6"]'
FPRegionname           =    '//*[@id="selected-region-name"]'
FPclearBTN             =    '//*[@id="vehicles-planning-filter-form"]/div[2]/div/div[3]/button[2]'
FPvehicleRegDD         =    '//*[@id="s2id_vehicle-registration"]'
FPSelectsearchDD       =    '//*[@id="s2id_search_for"]'
FPSelectVal            =    "xpath=(.//div[contains(normalize-space(.), 'Annual service')])[last()]"
FPSeletTimeperiodTB    =    '//*[@id="s2id_search_for_date_range"]'
FPSeletTimeperiodTBVal =    "xpath=(.//div[contains(normalize-space(.), 'Date passed')])[last()]"
FPsearchicon           =    "xpath=(.//select[contains(normalize-space(.), 'Date passedNext 7 days8-14 days time15-30 days time')]/following::i)[1]"
#FPClearBTN             =    "xpath=(.//button[contains(., '')])[2]"
FPAnnualServieColumn    =   '//*[@id="jqgh_jqGrid_dt_annual_service_inspection_original"]'
FPLocationColumn        =   '//*[@id="jqgh_jqGrid_vehicle_location"]'
FPCalendarTab           =   '//a[@href="#planner"]'
FPCalAllDD              =   '//*[@id="s2id_event"]'
FPCalAllDDVal           =   "//input[@id='s2id_autogen9_search']"
FPCalTodayDate          =   '//*[@id="daily-events"]/div[1]/div[2]/h3'
FPCalTodayBTN           =   '//*[@id="today"]'
FPCalMonthDD            =   '//*[@id="select2-chosen-4"]'
FPCalYearOPN              =   "//*[contains(text(),'Year')]"
FPCalExportPlanner      =   '//*[@id="print-btn"]'

#==========================Messages========================================
#=============Send Message=================================================
NoTemplateDD            =   "xpath=(.//button[contains(normalize-space(.), 'No template selected')][@type='button'])[1]"
SelectTemplate          =   '//*[@id="messages-form"]/div/div[1]/div/div[1]/div/div/ul/li[2]'
UserSearchTB            =   '//*[@id="messages-form"]/div/div[1]/div/div[2]/div/div/div[1]/div/div/div/input'
UsersToggle             =   '//*[@id="accordion1"]/div/div/div[1]/h4/a'
UsersCB                 =   "xpath=((.//label[contains(normalize-space(.), 'Select recipients:')])[1]/following::input[@type='checkbox'])[1]"
UsersDetails            =   '//*[@id="send-message-users"]/div/div[1]/ul/li/div/label'
SendButton              =   '//*[@id="messages-form"]/div/div[2]/div[6]/div/button[1]'
SendYesBTN              =   "xpath=.//button[contains(., 'Yes')][@type='button']"

#=======History Tab======================================================
HistoryTab              =   '//*[@id="messages-page"]/div[1]/ul/li[2]/a'
HistoryDetailsBTN       =   'xpath=/html/body/div[2]/div[2]/div/section/div/div[1]/div/div[2]/div[2]/div/div/div[2]/div/div[3]/div[3]/div[1]/table/tbody/tr[2]/td[7]'
HistoryReportDetails    =   '//*[@id="ajax-modal-content"]/div[5]/div/div[2]/div/div/div[1]'
HistoyDate              =   '//*[@id="ajax-modal-content"]/div[1]/div[2]'
HistorySender           =   '//*[@id="ajax-modal-content"]/div[2]/div[2]'
HistoryTemplate         =   '//*[@id="ajax-modal-content"]/div[3]/div[2]'
HistoryRecipients       =   '//*[@id="ajax-modal-content"]/div[4]/div[2]'
HistoryRecipients1      =   '//*[@id="ajax-modal-content"]/div[4]/div[2]'
DownloadStatus          =   'xpath=/html/body/div[9]/div/div[2]/div[5]/div/div[1]/div[2]'
CloseReport             =   '//*[@id="message-details-modal"]/div[1]/a/i'

#======Manage Groups tab=================================================
ManageGrouptab         =    "//*[contains(text(),'Manage Groups')]"
GroupNameTB            =    "xpath=.//input[@placeholder='Enter new group name'][@type='text']"
SelectrecipientsTB      =   '//*[@id="group-form"]/div[1]/div[2]/div/div/div[1]/div/div/div/input'
MGUsersCB               =   '//*[@id="accordion2"]/div/div[1]/h4/a'
MGUsersValCB            =   '//*[@id="group_users"]/div/div[1]/ul/li/div/label/div/span/input'
MGAddBTN                =   "xpath=(.//button[contains(., 'Add')][@type='button'])[1]"
SelectGroup             =   "xpath=.//a[contains(normalize-space(.), 'Test Group')]"
SelectEditGroup         =   "xpath=.//a[contains(normalize-space(.), 'Test Group 1')]"
MGUpdateBTN             =   "xpath=(.//button[contains(., 'Update')][@type='button'])[1]"
MGDeleteBTN             =   "xpath=(.//button[contains(., 'Delete')][@type='button'])[1]"

#====================Manage Templates========================================

ManageTemplates         =   "//*[contains(text(),'Manage Templates')]"
Templatename            =   "xpath=.//input[@placeholder='Enter new template name'][@type='text']"
MessageTB               =   '//*[@id="messageOpenChoiceEditor_ifr"]'
MTAddBTN                =   "xpath=(.//button[contains(., 'Add')][@type='button'])[last()]"
MTTemplate              =   '//*[@id="tab_4"]/div[2]/div/div[1]/div/ul/li[1]/a/span/span[2]'
MTUpdateBTN             =   "xpath=(.//button[contains(., 'Update')][@type='button'])[last()]"
MTDeleteBTN             =   "xpath=(.//button[contains(., 'Delete')][@type='button'])[last()]"
TemplateTypeDD        =   "xpath=.//span[contains(normalize-space(.), 'Standard message')]"
MCQtemplateType         = "xpath=(.//div[contains(normalize-space(.), 'Multiple choice questionnaire')])[last()]"
MTMessageTB             =   "xpath=(.//textarea[@placeholder='Enter message details'])[1]"
MTQuestion1TB           =   '//*[@id="editor0_ifr"]'
MTQue1CB                =   '//*[@id="template-form"]/div[1]/div[5]/div/div/div[1]/div[2]/div/span[1]/div/span/input'
MTQue1Val   = '//*[@id="template-form"]/div[1]/div[5]/div/div/div/div[2]/div/input'
MTQue2Val   = '//*[@id="template-form"]/div[1]/div[5]/div/div/div/div[3]/div/input'
MTAddnextQueBTn     =   "xpath=.//button[contains(normalize-space(.), 'Add next question')][@type='button']"
MTQuestion2TB           =   '//*[@id="editor1_ifr"]'
MTQue3Val   = '//*[@id="template-form"]/div[1]/div[5]/div/div/div[2]/div[2]/div/input'
MTQue4Val   = '//*[@id="template-form"]/div[1]/div[5]/div/div/div[2]/div[3]/div/input'
MTMCQAddBTN   = "xpath=(.//button[contains(., 'Add')][@type='button'])[last()]"
RemoveQuestionLink  =   "xpath=(.//a[contains(normalize-space(.), 'Remove question')])[last()]"
AddanotheransLink       =   "xpath=.//a[contains(normalize-space(.), 'Add another answer')]"
MTQue5Val   = '//*[@id="template-form"]/div[1]/div[5]/div/div/div/div[4]/div/input'
MTQue5CB    =   '//*[@id="template-form"]/div[1]/div[5]/div/div/div/div[4]/div/span[1]/div/span/input'
MTQATemplate   =   "xpath=(.//div[contains(normalize-space(.), 'Q&A survey')])[last()]"
MTQA1TB        =    '//*[@id="openChoiceEditor0_ifr"]'
MTQAAddnextque  =   "xpath=.//button[contains(normalize-space(.), 'Add next question')][@type='button']"
MTQA2TB         =   '//*[@id="openChoiceEditor1_ifr"]'

#=====================Workshop (WS)==========================================================================
WSResetDD           =   "xpath=((.//div[contains(normalize-space(.), 'Reset columns Add new workshop user')])[last()]/child::span)[1]"
WSUsernameCB        =   "xpath=((.//label[contains(., 'Username/Email')])[1]/following::input[@type='checkbox'])[1]"
WSLandLineCB        =   "xpath=(.//label[contains(normalize-space(.), 'Landline Number')]/following::input[@type='checkbox'])[1]"
WSMobileCB        =   "xpath=(.//label[contains(normalize-space(.), 'Mobile Number')]/following::input[@type='checkbox'])[1]"
WSAddress1CB        =  "xpath=((.//label[contains(., 'Address1')])[1]/following::input[@type='checkbox'])[1]"
WSAddress2CB        =  "xpath=((.//label[contains(., 'Address2')])[1]/following::input[@type='checkbox'])[1]"
WStownCityCB       =   "xpath=((.//label[contains(., 'Town/City')])[1]/following::input[@type='checkbox'])[1]"
WSResetSubmit       =   "xpath=.//a[contains(., 'Submit')]"
WSDownloadReport    =   "xpath=((.//div[contains(normalize-space(.), 'Reset columns Add new workshop user')])[last()]/child::span)[last()]"
WSResetColumnBTN    =   "xpath=.//a[contains(normalize-space(.), 'Reset columns')]"
WSResetConfirmBTN   =   "xpath=.//button[contains(., 'Yes')][@type='button']"
WSaddNewworkshopUser    =   "xpath=/html/body/div[2]/div[2]/div/section/div[3]/div/div/div[1]/div[2]/a[2]"
WSFirstName     =   '//*[@id="first_name"]'
WSLastName      =   '//*[@id="last_name"]'
WSAddNewCompany =   '//*[@id="add_user"]/div/div/div/div[1]/div[3]/div[2]/a'
WSAddcompanyName    =   '//*[@id="name"]'
WSaddCompanySaveBTN  =   '//*[@id="addWorkShopCompanyBtn"]'
WSCompanyDD         =   "xpath=.//span[contains(., 'Select')]"
WSEmailTB           =   '//*[@id="email"]'
WSMobileTB          =   '//*[@id="mobile"]'
WSLandlineTB        =   '//*[@id="landline"]'
WSAddress1TB         =   '//*[@id="address1"]'
WSAddress2TB          =   '//*[@id="address2"]'
WSTownTB            =   '//*[@id="town_city"]'
WSpostcodeTB        =   '//*[@id="postcode"]'
WSpostcodeTB        =   '//*[@id="postcode"]'
WSAddUserBTN        =   '//*[@id="addUser"]/div[3]/div/div/button[2]'
WSSearchByCompanyTB =   '//*[@id="quickSearchInput"]'
WSSearchBTN         =   '//*[@id="search"]'
WSClearBTN          =   '//*[@id="defects-filter-form"]/div/div/div/div[2]/div/div/button[2]'
WSEditUserBTN       =   "xpath=((.//u[contains(normalize-space(.), 'Re-send invite')])[1]/following::i)[1]"
WSUpdateBTN         =   "xpath=.//button[contains(., 'Update')][@type='submit']"
WSDeleteUserIcon    =   "xpath=((.//u[contains(normalize-space(.), 'Re-send invite')])[1]/following::i)[2]"
WSDeleteUserYesBTN  =   "xpath=//button[@data-bb-handler='confirm']"
WSShowinactiveusersCB   =   "xpath=((.//div[contains(normalize-space(.), 'Workshop User List')])[last()]/following::input[@type='checkbox'])[1]"
WSEditFirstnameTB       =   "xpath=((.//label[contains(normalize-space(.), 'First name*:')])[last()]/following::input[@type='text'])[1]"
WSEditLastnameTB        =   "xpath=((.//label[contains(normalize-space(.), 'Last name*:')])[last()]/following::input[@type='text'])[1]"
WSEditADR1TB            =   " xpath=((.//label[contains(., 'Address1:')])[last()]/following::input[@type='text'])[1]"
WSEditADR2TB            =   "xpath=((.//label[contains(., 'Address2:')])[last()]/following::input[@type='text'])[1]"
WSEditUpdateUserBTN     =   "xpath=.//button[contains(., 'Update')][@type='submit']"

#================UserManagement(UM)================================================================
UMUsernameCB            =   "//input[@id='col_username']"
UMJobTitleCB            =   "//input[@id='col_job_title']"
UMLandLineCB            =   "//input[@id='col_landline']"
UMDivisionCB            =   "//label[@for='col_division_name']"
UMEnableAccountCB       =   "//input[@id='col_enable_login']"
UMAddUserBTN            =   "//a[contains(text(),'Add new user')]"
UMCompanyDD             =   "xpath=(.//span[contains(., 'Select')])[1]"
UMJobTitleTB            =   '//input[@id="job_title"]'
UMMobileTB              =   '//input[@id="mobile"]'
UMLandlineTB            =   '//input[@id="landline"]'
UMEngineerIDTB          =   '//input[@id="engineer_id"]'
UMIMEITB                =   '//input[@id="imei"]'
UMEnableAccountDD       =   "//div[@id='s2id_enable_login']"
UMEnableAccountOptn     =   "//div[contains(text(),'Yes')]"
UMLinemanagerDD         =   "//div[@id='s2id_line_manager']"
UMLinemanagetSearch     =   "//input[@id='s2id_autogen12_search']"
UMLinemanagetSearchVal  =   "//span[contains(text(),'Adam Steele')]" 
UMDivisionDD            =   "//div[@id='s2id_user_division_id']"
UMDivisionSearch        =   "//input[@id='s2id_autogen10_search']"
UMDivisionSearchVal     =   "//span[contains(text(),'BS Bristol Schools')]"
UMFuelcardTB             =   "//input[@id='fuel_card_number']"
UMUserPermissionTab     =   "//a[contains(text(),'User Permissions')]"
UmUserinformationRadio  =   '//*[@id="user_permission"]/div/div/div[1]/div[2]/div[1]/div[2]/label/div/span'
UMVehiclePermissionTab  =   "//a[contains(text(),'Vehicle Permissions')]"
UMVehiclePermissionCB   =   "//input[@id='all_accessible_region']"
UMUseeNotificationTab    =   "//a[contains(text(),'User Notifications')]"
UMAddUSerSaveBTN        =   '//*[@id="addUser"]/div[3]/div/div/button[2]'
UMSearchBynameTB        =   '//input[@id="quickSearchInput"]'
UMSearchBTN             =   "//button[@id='search']"
UMClearBTN              =   "xpath=/html/body/div[2]/div[2]/div/section/div[2]/div/div/form/div/div/div/div[3]/div/div[2]/div/div/button[2]"
UMAllRegionDD       =   '//*[@id="s2id_userregions"]/a'
UMUserEditBTN       =   "xpath=//button[@class='btn btn-xs grey-gallery edit-timesheet tras_btn edit-user']"
UMEditModel         =   "//div[@id='user-edit']"
UMEditFirstNameTB   =   "xpath=/html/body/div[9]/div/form/div[2]/div/div[2]/div[2]/div/div/div/div[1]/div[1]/div/input"
UMEditLastnameTB    =   "xpath=/html/body/div[9]/div/form/div[2]/div/div[2]/div[2]/div/div/div/div[1]/div[2]/div/input"
UMEditJobTitleTB    =   "xpath=/html/body/div[9]/div/form/div[2]/div/div[2]/div[2]/div/div/div/div[1]/div[5]/div/input"
UMEditUpdateBTN     =   "xpath=/html/body/div[9]/div/form/div[3]/div/div/button[2]"
UMDeleteIcon        =   "//a[@class='btn btn-xs grey-gallery edit-timesheet tras_btn js-user-disable-btn']"
UMDeleteConfirmBTN      =   '//button[@data-bb-handler="confirm"]'
UMCluear1BTN        =   '//*[@id="defects-filter-form"]/div/div/div/div[3]/div/div[2]/div/div/button[2]'
UMSjowinactiveuserCB    =   '//*[@id="show_deleted_users"]'

#============Vehicle checks(VC)==========================
VCVehicleRegDD          =   "xpath=.//span[contains(normalize-space(.), 'Vehicle registration')]"
VCVehicleRegVal         =   "xpath=(.//span[contains(normalize-space(.), 'Please enter 1 or more character')]/following::input[@type='text'])[last()]"
VCVEhicleReg            =   "xpath=(.//span[contains(., 'FJ61GWN')])[1]"
VCSearchBTN             =   "xpath=.//button[contains(., '')][@type='submit']"
VCClearBTN              =   "//button[@class='btn grid-clear-btn btn-h-45 grey-gallery ']"
VCADVAllRegionDD        =   "xpath=.//span[contains(normalize-space(.), 'All regions')]"
VCADVAllRegionVal       =   "xpath=(.//div[contains(normalize-space(.), 'Bristol')])[last()]"
VCADVClearBTN           =   "//*[@class='btn grid-clear-btn btn-h-45 grey-gallery']"
VCADVSearchcheckDD      =   '//*[@id="select2-chosen-5"]'
VCADVSelectcheckResult  =   "xpath=.//span[contains(normalize-space(.), 'Select check result')]"
VCADVSelectcheckResultval  =   "xpath=(.//div[contains(normalize-space(.), 'Unsafe to operate')])[last()]"
VCADVDateDD             =   "xpath=.//input[@placeholder='Date'][@type='text']"
VDADVDateVal            =   "xpath=.//li[contains(normalize-space(.), 'Last 7 days')]"
VCTypeCB                =   "xpath=(.//label[contains(., 'Type')]/following::input[@type='checkbox'])[1]"
VCVehicleStatusCB       =   "xpath=(.//label[contains(normalize-space(.), 'Vehicle Status')]/following::input[@type='checkbox'])[1]"
VCCheckResultCB         =   "xpath=(.//label[contains(normalize-space(.), 'Check Result')]/following::input[@type='checkbox'])[1]"
VCRegionCB              =   "xpath=(.//label[contains(., 'Region')]/following::input[@type='checkbox'])[1]"
VCOdometerCB            =   "xpath=(.//label[contains(., 'Odometer')]/following::input[@type='checkbox'])[1]"
VCModelCB               =   "xpath=(.//label[contains(., 'Model')]/following::input[@type='checkbox'])[1]"
VCSubmitBTN             =   "xpath=.//a[contains(., 'Submit')]"
VCViewVehiclecheck      =   "xpath=((.//td[contains(normalize-space(.), 'A Support')])[1]/following::i)[1]"
VCExportVehilecheck     =   "xpath=.//a[contains(normalize-space(.), 'Export vehicle check')]"
VCEditVehiclecheckBTN   =   "xpath=.//button[contains(normalize-space(.), 'Edit vehicle check')]"
VCLeaks                 =   "xpath=(.//div[contains(., 'Leaks')])[8]"
VCLeakEditBTN           =   '//*[@id="checks-page"]/div[3]/div/div[2]/div/div[2]/div/div[1]/div/div/div[5]/p/button'
VCDefectBTN             =   "xpath=.//button[contains(., 'Defect')][@type='button']"
VCUploadBTN             =   "xpath=.//button[contains(normalize-space(.), 'Upload image')][@type='button']"
VCDefectcommentModel       =   '//*[@id="edit-modal"]/div/div/div[2]/form/div/div[6]/div/textarea'
VCEditDefectSaveBTN     =   '//*[@id="edit-modal"]/div/div/div[3]/div/button[2]'
VCEditDefectNodefect    =   "xpath=.//button[contains(normalize-space(.), 'No defect')][@type='button']"

#=================Reports==============================================
ReportsSearchbtnameTB   =   '//*[@id="quickSearchInputReport"]'
ReprotsSearchBTN        =   '//*[@class="jv-icon jv-search"]'
ReportViewBTN           =   '//*[@class="btn btn-xs grey-gallery tras_btn js-download-report-btn"]'
ReportDownloadBTN       =   '//*[@id="saveDownloadReport"]/div[3]/div[1]/div/div/button'
DownloadTab             =   '//*[@id="downloads_tab"]/a'
DownloadSearchbtnameTB  =   '//*[@id="quickSearchInputForDownload"]'
DownloadsSearchBTN      =    '//*[@id="custom-reports-download-filter-form"]/div/div/div/div/div[2]/div/div/button[1]'
ActionDownloadicon      =   '//a[@title="Download"]'
ACtionDeleteicon        =   '//a[@title="Delete"]'
ActionDeleteYesBTN      =   "//button[@data-bb-handler='confirm']"
DownlaodEditicon        =   "//*[@class='btn btn-xs grey-gallery tras_btn']"
EditReportname          =   '//*[@id="report_name"]'
EditDescription         =   '//*[@id="report_description"]'
EditFirstChekbox        =   '//*[@id="report_users"]/div/div[1]/table/tbody/tr[1]/td[1]/div/label/div/span/input'
EditNextBTN             =   '//*[@id="btnSaveCustomReport"]'
EditGeneratereport      =   '//*[@id="btnSubmitCustomReport"]'
DateRangeDD             =   '//*[@id="date_range"]'
DateRangeToday          =   "//li[@data-range-key='Today']"
Reportstab              =   '//*[@id="reports_tab"]'
##################################=============================================

#=================Assets====================================================
##============Asset Profile================================================
Username = "//input[@name='identity']"
Password = "//input[@id='register_password']"
PassValue = "aecor2021"
Loginbutton = "//button[contains(text(),'Login')]"
AssetType = "//input[@id='title']"
#AssetTypeText = "AecorProfile"
AssetCategory = "//div[@id='s2id_category_id']"
SelectAssetCategory = "//div[contains(text(),'Trailers')]"
AssetSubCategory = "//div[@id='s2id_category_type_id']"
SelectAssetSubCategory = "//div[contains(text(),'Small trailer')]"
ChangeAssetSubCategory = "//div[contains(text(),'Large trailer')]"
AssetProfileC02 = "//input[@id='co2']"
AssetADRTestInterval = "//div[@id='s2id_adr_test_interval']"
AssetADRTestIntervalValue = "//div[contains(text(),'None')]"
AssetPMIInterval = "//div[@id='s2id_pmi_interval']"
#AssetPMIIntervalValue = ""
AssetRubberIntegrityTestInterval = "//div[@id='s2id_rubber_integrity_test_interval']"
AssetTankTestInterval = "//div[@id='s2id_tank_test_interval']"
AssetOdometerSetting = "//div[@id='s2id_odometer_type']"
OdometerSettingOption = "//div[contains(text(),'KM')]"
AssetManufacturer = "//input[@id='manufacturer']"
AssetManufacturerText = 'Aecor'
AssetModel = "//input[@id='model']"
AssetModelText = 'AecorTestModel'
AssetFuelType = "//div[@id='s2id_fuel_type']"
SelectAssetFuelType = "//div[contains(text(),'Petrol')]"
AssetEngineType = "//div[@id='s2id_engine_type']"
AssetServiceFrequency = "//div[@id='s2id_service_inspection_frequency']"
SelectAssetServiceFrequency = "//div[contains(text(),'12 weeks')]"
AssetCreationSubmit = "//button[@id='submit-button']"
AssetSearchFilter = "//div[@id='s2id_profileTitle']"
AssetSearchInputField = "//input[@id='s2id_autogen3_search']"
AssetSearchInputField2 = "//input[@id='s2id_autogen4_search']"
AssetClearSearch = "//*[@id='asset-profiles-form']/div/div/div/div[2]/div/div/button[2]"
ArchivedAssetProfile = "//span[contains(text(),'Show archived asset profiles')]"
ArchivedStatusItem = "//span[contains(text(),'Archived')]"
AssetColumnType = "//div[@id='uniform-col_title']"
AssetColumnCategory = "//div[@id='uniform-col_asset_category']"
AssetColumnSubCategory = "//div[@id='uniform-col_asset_type']"
AssetColumnManufacturer = "//div[@id='uniform-col_manufacturer']"
AssetColumnModel = "//div[@id='uniform-col_model']"
AssetColumnFuelType = "//div[@id='uniform-col_fuel_type']"
AssetColumnModelProfileStatus = "//div[@id='uniform-col_profile_status']"
EditTable1 = "//table[@class='EditTable']"
EditTable2 = "//td[@class='ColButton EditButton']"
AssetColumnSubmit = "//a[@id='dData']"
AssetRefresh = "//span[@class='m5 jv-icon jv-reload']"
AssetDownload = "//Span[@class='m5 jv-icon jv-download']"
AssetProfileDetails = "//a[@title='Details']"
AssetProfileEdit = "//a[@title='Edit']"
##============Asset Search================================================

AssetAdd = "//a[@href='https://uat-"+client+".fleetmastr.com/assets/create']"
AssetNumber = "//input[@id='serial_number']"
AssetTypeSelection = "//div[@id='s2id_asset_profile_id']"
AssetTypeValueSelection = "//option[contains(text(),'${AssetName}')]"
AssetStatus = "//div[@id='s2id_status']"
AssetStatusValue = "//div[contains(text(),'Roadworthy')]"
AssetAvailability = "//div[@id='s2id_availability']"
AssetAvailabilityValue = "//div[contains(text(),'Available')]"
AssetOwnershipStatus = "//div[@id='s2id_ownership_type']"
AssetOwnershipStatusValue = "//div[contains(text(),'Owned')]"
AssetNNRMCompliant = "//div[@id='s2id_nrmm_complaint']"
AssetNNRMCompliantValue = "//div[contains(text(),'No')]"
AssetDivision = "//div[@id='s2id_asset_division_id']"
#//input[@class='select2-input' and @id='s2id_autogen16_search']
AssetDivisionValue = "//div[contains(text(),'SHL')]"
AssetRegion = "//div[@id='s2id_asset_region_id']"
AssetRegionValue = "//div[contains(text(),'Manchester')]"
AssetSubmit = "//button[@id='saveAssetBtn']"
AssetQuickSearchButton = "//a[contains(text(),'Quick Search')]"
AssetQuickSearchNumber = "//div[@id='s2id_serial_number']"
AssetQuickSearchNumberField = "//input[@id='s2id_autogen2_search']"
AssetExist = "//a[contains(text(),'${AssetNumberValue}')]"
AssetQuickSearchClearFilter = "//button[@class='btn js-asset-grid-clear-btn btn-h-44 grey-gallery ' and @type='button']"
AssetAdvanceSearchClearFilter = "//button[@class='btn btn-h-44 grey-gallery clearAssetGrid ' and @type='button']"
AssetAdvanceSearchButton = "//a[contains(text(),'Advanced Search')]"
AssetAdvanceSearchType = "//div[@id='s2id_type']"
AssetAdvanceSearchTypeField = "//input[@id='s2id_autogen8_search']"
AssetAdvanceSearchAssertion = "//a[contains(text(),'${AssetNumberValue}')]"
ArchivedAsset = "//input[@id='show_archived_assets']"
ArchivedAssetAssetion = "//span[contains(text(),'Archived')]"

AssetNumberSearch = "//div[@id='uniform-col_serial_number']"
AssetTypeSearch = "//div[@id='uniform-col_title']"
AssetCategorySearch = "//div[@id='uniform-col_asset_category']"
AssetSubCategorySearch = "//div[@id='uniform-col_asset_type']"
AssetOwnershipSearch = "//div[@id='uniform-col_ownership_type']"
AssetStatusSearch = "//div[@id='uniform-col_status']"
AssetAvailabilitySearch = "//div[@id='uniform-col_availability']"
ColumnSubmit = "//a[contains(text(),'submit')]"
ColumnManageAssertion = "//td[contains(text(),'Manchester')]"
AssetDetailsBTN = "//a[@title='Details']"
AssetNumberOnDetailsPage = "//span[contains(text(),'${AssetNumberValue}')]"
AssetEdit = "//a[@title='Edit']"
OdometerReadingField = "//input[@id='last_odometer_reading']"
RegistrationDate = "//input[@id='registration_date']"
RegDateVal1 = "xpath=/html/body/div[8]/div[1]/table/thead/tr[2]/th[3]"
RegDateVal2= "//td[contains(text(),'1')]"
ReplacementDate = "//input[@id='replacement_date']"
ReplaceDateVal1 = "xpath=/html/body/div[8]/div[1]/table/thead/tr[2]/th[3]"
ReplaceDateVal2 = "xpath=/html/body/div[8]/div[1]/table/tbody/tr[1]/td[5]"
SerialNumber = "//input[@id='sr_number']"
AssetChecks = "//a[@title='Checks']"
AssetDefects = "//a[@title='Defects']"
AssetTypeList = "//div[@id='select2-drop']"

##============Asset Defect================================================
AssetNumberDD       =   '//*[@id="select2-chosen-3"]'
ExportDefectNote    =   'xpath=/html/body/div[2]/div[2]/div/section/div[1]/div/div/a[2]'
ExportDefectHistory =   'xpath=/html/body/div[2]/div[2]/div/section/div[1]/div/div/a[3]'
DefectCost   =   '//*[@id="defect-cost-edit"]'
Defctcostfield      =   '//*[@id="defect-cost"]/span/div/form/div/div[1]/div[1]/input'
DefectCostSaveBTN   =   '//*[@id="defect-cost"]/span/div/form/div/div[1]/div[2]/button[1]'
EditAssetdefectSaveBTN  =   "//input[@type='submit']"
AssetDefectViewBTN  =   "//table[@id='jqGrid']/tbody/tr[2]/td[10]/a[1]"
AssetCategoryCB     =   "//div[@id='uniform-col_category']"
AssetAllocatedtoCB  =   "//div[@id='uniform-col_allocatedTo']"
AssetNumberDD1      =   "xpath=.//span[contains(normalize-space(.), 'Asset number')]"
AssetDefectAllRegVal    =   "xpath=(.//div[contains(normalize-space(.), 'Manchester')])[last()]"

#=========Asset Check==============================
ViewAssetcheckicon      =   "//table[@id='jqGrid']/tbody/tr[2]/td[8]/a[1]"
EditAssetCheckBTN       =   "xpath=.//button[contains(normalize-space(.), 'Edit asset check')]"
Editcheckoption         =   "xpath=(.//div[contains(., 'Trailer Coupling and Security - Safety Clip')])[10]"
AssetCheckEditBTN       =   '//*[@id="assets_checks_show"]/div[3]/div/div[1]/div/div[2]/div/div/div/div/div[5]/p/button'
AssetDefectID       =   "//table[@id='jqGrid']/tbody/tr[2]/td[3]"
AssetNumberfield    =   "//table[@id='jqGrid']/tbody/tr[2]/td[2]"
AssetAdvancedSearchTab  =   "//a[contains(text(),'Advanced search')]"

#==========Mobile App===============================

AppUsernameXP       =   "id=com.aecor.fleetmastr:id/input_email"
AppPasswordXP       =   "id=com.aecor.fleetmastr:id/input_password"
AppLoginBTN         =   "id=com.aecor.fleetmastr:id/btn_login"
AppLogoutXP         =   "id=com.aecor.fleetmastr:id/navigation_logout"
AppLogoutConfirm    =   "id=com.aecor.fleetmastr:id/btn_positive"
ApplogoutCloseBTN   =   "id=com.aecor.fleetmastr:id/btn_close"

# General Commands

AlwaysAllowPermissionBTN	=	'id=com.android.permissioncontroller:id/permission_allow_always_button'
RegNumberIputXP				=	'id=com.aecor.fleetmastr:id/enter_registration_number'
OdometerReadingXP           =   "id=com.aecor.fleetmastr:id/enter_registration_number"
EnterRegNoText				=	'id=com.aecor.fleetmastr:id/textView11'
EnterRegNoConfirmBTN		=	'id=com.aecor.fleetmastr:id/btnContinue'
ConfVehDetailsConfirmBTN	=	'id=com.aecor.fleetmastr:id/btnContinue'
SafeToOperateBTN            =   'id=com.aecor.fleetmastr:id/safeToOperate'
SendReportConfBTN           =   'id=com.aecor.fleetmastr:id/btn_positive'
HomeBTN                     =   'id=com.aecor.fleetmastr:id/btnHome'
SaveBTN                     =   'id=com.aecor.fleetmastr:id/btn_save'
CancelBTN                   =   'id=com.aecor.fleetmastr:id/btn_negative'
RememberVehileCB            =   "id=com.aecor.fleetmastr:id/rememberVehicleCB"
ContinueBTN                 =   "id=com.aecor.fleetmastr:id/btnContinue"
ContinueButton              =   "id=com.aecor.fleetmastr:id/btn_continue"
TrailerChcekYes             =   "com.aecor.fleetmastr:id/radio_yes"
TrailerChcekNo             =   "com.aecor.fleetmastr:id/radio_no"
EnterTrailerIDTB            =   "com.aecor.fleetmastr:id/et_input_yes"
TrailerCheckText            =   "com.aecor.fleetmastr:id/question_text"
OptionYes                   =   "id=com.aecor.fleetmastr:id/radio_yes"
Option_No                   =   "id=com.aecor.fleetmastr:id/radio_no"   
OptionNo                    =   "id=com.aecor.fleetmastr:id/btn_no"
BackButton                    =   "id=com.aecor.fleetmastr:id/ll_back"
SaveButton                    =   "id=com.aecor.fleetmastr:id/ll_save"
SaveImageBTN                =   "id=com.aecor.fleetmastr:id/saveButton"

# Take Out Vehicle
TakeoutVehicleBTN       =   "id=com.aecor.fleetmastr:id/ll_take_out_vehicle"
text                    =   "id=com.aecor.fleetmastr:id/textView12"
TextonPage              =   "id=com.aecor.fleetmastr:id/textView11"
ResumevehicleCheck      =   "id=com.aecor.fleetmastr:id/ll_resumeVehicleCheck"
DefectItemTB            =   "id=com.aecor.fleetmastr:id/txt_defect_item"
YesButton               =   "id=com.aecor.fleetmastr:id/btn_yes"
OkayButton              =   "id=com.sec.android.app.camera:id/okay"
CloseButton             =   "id=com.aecor.fleetmastr:id/iv_close"

# Return Vehicle
ReturnVehicleBTN        =   "id=com.aecor.fleetmastr:id/ll_return"
ReviewScreenContBTN     =   "com.aecor.fleetmastr:id/btn_all_ok"
TakeOutReturnCheck      =   "com.aecor.fleetmastr:id/takeOutReturnCheck"
ReturnCheckContinueBTN  =   "id=com.aecor.fleetmastr:id/btn_all_ok"

# Report Vehile Defect
ReportVehicleDefectBTN  =    "com.aecor.fleetmastr:id/ll_report_vehicle_defect"

# Vehicle check history
VehicleCheckHistory     =   "id=com.aecor.fleetmastr:id/ll_vehicleCheckHistory"

# MassageBox
MessageXP               =   "com.aecor.fleetmastr:id/navigation_message"
SearchMessageBox        =   "id=com.aecor.fleetmastr:id/et_search"
MessageTitle            =   "id=com.aecor.fleetmastr:id/tv_department_title"
MessageDescription      =   "id=com.aecor.fleetmastr:id/tv_message_desc"
StartQuiz               =   "id=com.aecor.fleetmastr:id/tv_start_quiz"
BackToMessage           =   "id=com.aecor.fleetmastr:id/btn_back_to_messages"

# Resolve defect flow
ResolveDefectBTN		=	'id=com.aecor.fleetmastr:id/btn_resolve_defect'
CouplingSecurityText	=	'Coupling Security'
BreakawaycabledamagedText   =   'Breakaway cable damaged'
WorkshopDD              =   'id=com.aecor.fleetmastr:id/et_workshop'
WorkshopName            =   'id=com.aecor.fleetmastr:id/checkBox1'
EngineerFirstNameTB     =   'id=com.aecor.fleetmastr:id/et_engineer_first_name'
EngineerLastNameTB      =   'id=com.aecor.fleetmastr:id/et_last_name'
JobDetailsTB            =   'id=com.aecor.fleetmastr:id/et_job_details'
JobdetailscameraBTN     =   'id=com.aecor.fleetmastr:id/camera_layout'
SeleceCmeraBTN          =   'id=com.aecor.fleetmastr:id/tv_select_camera' 
AllowCameraAccess       =   'id=com.android.permissioncontroller:id/permission_allow_button'
TakePicture             =   'Take picture'
OK                      =   'OK'
AdditionalInformationTB =   'id=com.aecor.fleetmastr:id/et_additional_information'
AdditionalInfoCameraBTN =   'id=com.aecor.fleetmastr:id/camera_layout_additional'
ResolveDefectConfBTN    =   'id=com.aecor.fleetmastr:id/btn_continue'
OtherOption             =   'id=com.aecor.fleetmastr:id/et_workshop_other'

# Incident report
ReportIncidentBTN       =   'id=com.aecor.fleetmastr:id/ll_report_incident'
KeyStepsContBTN         =   'id=com.aecor.fleetmastr:id/button_continue'
TypeofIcidentBTN        =   'id=com.aecor.fleetmastr:id/et_type_of_incident'
ClassificationBTN       =   'id=com.aecor.fleetmastr:id/et_classification'
ReportToInsuranceChkBox =   'id=com.aecor.fleetmastr:id/rb_insurance_yes'
ResumeIncidentReportBTN =   'id=com.aecor.fleetmastr:id/ll_resume_report_incident'
ViewInsuranceDetails    =   'id=com.aecor.fleetmastr:id/iv_view_insurance'
InsuranceCompanyname    =   'Aecor Test'
TelephoneNo             =   '9979262534'
PolicyNo                =   'GJ09BA8153'
PolicyName              =   'Vehicle Policy Insurance'
InsuranceDetailsCloeBTN =   'id=com.aecor.fleetmastr:id/btn_close'
InsuDetailsContBTN      =   'id=com.aecor.fleetmastr:id/btn_continue'
CaptureImageBTN         =   'id=com.aecor.fleetmastr:id/camera_layout'
AlmostDoneSendBTN       =   'id=com.aecor.fleetmastr:id/btn_send'
NoconnectinSaveBTN      =   'id=com.aecor.fleetmastr:id/btn_positive' 
InsuranceDetailsOPT     =   '//*[@href="#accident_insurance"]'
CompanyNameXP           =   '//input[@name="insurance_company"]'
TelephoneNoXP           =   '//input[@name="telephone_number"]'
PolicyNoXP              =   '//input[@name="policy_number"]'
PolicyNameXP            =  '//input[@name="policy_name"]'
SubmitInsuranceBTN      =   '//button[@id="accident_insurance_submit"]'
RecentIncidentNoXP      =   "xpath=/html/body/div[2]/div[2]/div/section/div[3]/div/div/div[2]/div/div/div[4]/div[3]/div[1]/table/tbody/tr[2]/td[3]"
SearchIncidentTB        =   '//input[@id="incident_id"]'
SubmitBTN               =   '//*[@type="submit"]'
DetailsBTNXP            =   '//*[@title="Details"]'
IncidentTypeXP          =   '//*[@id="incident-type-td"]'
IncidentClassificationXP    =   '//*[@class="incident-classification-view"]'


#Telematics
TelematicsBTN           =   'id=com.aecor.fleetmastr:id/ll_telematics'
MyJourneyBackBTN        =   'id=com.aecor.fleetmastr:id/iv_back'
MyJourneyBTN            =   'id=com.aecor.fleetmastr:id/txtMyJourney'
RandomCombinations      =   'QWERTYUIOPASDFGHJKLZXCVBNM1234567890'
SearchBTN               =   "//button[@id='searchType']"
SearchDropDown          =   "//span[@id='select2-chosen-1']"
AutoSearchBox           =   "//input[@id='s2id_autogen1_search']"
ShowStationaryCheckbox  =   "//input[@id='show_stationery_vehicles']"
VehicleonGraph          =   "//div[@id='telematics-data']//div[3]//div[2]//img[1]"
VehicleDetailsXP        =   "xpath=/html[1]/body[1]/div[2]/div[2]/div[1]/section[1]/div[3]/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/table[1]/tbody[1]/tr[1]/td[2]"
DriverNameXP            =   "xpath= /html[1]/body[1]/div[2]/div[2]/div[1]/section[1]/div[3]/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/table[1]/tbody[1]/tr[2]/td[2]"
AddressXP               =   "xpath=/html[1]/body[1]/div[2]/div[2]/div[1]/section[1]/div[3]/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/table[1]/tbody[1]/tr[3]/td[2]"
SpeedXP                 =   "xpath=/html[1]/body[1]/div[2]/div[2]/div[1]/section[1]/div[3]/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/table[1]/tbody[1]/tr[4]/td[2]"
DirectionXP             =   "xpath=/html[1]/body[1]/div[2]/div[2]/div[1]/section[1]/div[3]/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/table[1]/tbody[1]/tr[5]/td[2]"
LastUpdatXP             =   "xpath=/html[1]/body[1]/div[2]/div[2]/div[1]/section[1]/div[3]/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/table[1]/tbody[1]/tr[6]/td[2]"
DrivingXP               =   "xpath=/html[1]/body[1]/div[2]/div[2]/div[1]/section[1]/div[3]/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/table[1]/tbody[1]/tr[7]/td[2]"
IdlingXP                =   "xpath=/html[1]/body[1]/div[2]/div[2]/div[1]/section[1]/div[3]/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/table[1]/tbody[1]/tr[8]/td[2]"
StoppedXP               =   "xpath=/html[1]/body[1]/div[2]/div[2]/div[1]/section[1]/div[3]/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/table[1]/tbody[1]/tr[9]/td[2]"
VehicledetailsCloseBTN  =   "xpath=/html[1]/body[1]/div[2]/div[2]/div[1]/section[1]/div[3]/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/button[1]"




























