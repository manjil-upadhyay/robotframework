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

client = 'skanska'

FleetmastrHome       =   "https://uat-"+client+".fleetmastr.com/"
FMTelematicspage    =   "https://uat-"+client+".fleetmastr.com/telematics/index"
Settingspage        =   "https://uat-"+client+".fleetmastr.com/settings"
IncidentReportspage =   "https://uat-"+client+".fleetmastr.com/incidents"
CreateVehiclePage   =   "https://uat-"+client+".fleetmastr.com/vehicles/create"
SearchVehiclePage   =   "https://uat-"+client+".fleetmastr.com/vehicles"
EditVehicleURL      =   "https://uat-"+client+"+.fleetmastr.com/vehicles/120/edit"
ReportDefectURL     =   "http://uat-"+client+"+.fleetmastr.com/defects"
MessagesURL         =   "http://uat-"+client+".fleetmastr.com/messages"
LogoutURL           =   "http://uat-"+client+".fleetmastr.com/auth/logout"
#=========website========================

UsernameTB          =   '//input[@type="text"]'
PasswordTB          =   '//input[@type="password"]'
UserID                  'admin@imastr.com'
UserPWD             =   'aecor2021'
LoginBTN            =   '//*[@id="register-submit-btn"]'
AdminDD             =   'xpath=/html/body/div[1]/div/div[2]/div[2]/ul/li[2]/a'
LogoutUser          =   '//a[@href="https://uat-skanska.fleetmastr.com/auth/logout"]'
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




























