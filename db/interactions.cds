namespace app.interactions;

using { Country } from '@sap/cds/common';
type BusinessKey : String(10);
type SDate : DateTime;
type LText : String(1024);


entity Interactions_Header {
  key ID : Integer;
  ITEMS  : Composition of many Interactions_Items on ITEMS.INTHeader = $self;
  PARTNER  : BusinessKey;
  LOG_DATE  : SDate;
  BPCOUNTRY : Country;

};
entity Interactions_Items {

    key INTHeader : association to Interactions_Header;
    key TEXT_ID : BusinessKey;
        LANGU   : String(2);
        LOGTEXT : LText;
};
entity WorkPerformance {

key WorkPerformanceID : Integer;
DailyReportDate : Date;
DayAndNight : String;
Group : String;
FacilityNo : String;
CreateUser : String;
CreateDate : Date;
UpdateUser : String;
UpdateDate : Date;
};
entity ActualWorkTime {

key ActualWorkTimeID : Integer;
WorkPerformanceID : Integer;
StartTime : Time;
EndTime : Time;
CreateUser : String;
CreateDate : Date;
UpdateUser : String;
UpdateDate : Date;
};
entity EquipmentActualTime {

key EquipmentActualTimeID : Integer;
WorkPerformanceID : Integer;
StartTime : Time;
EndTime : Time;
CreateUser : String;
CreateDate : Date;
UpdateUser : String;
UpdateDate : Date;
};


entity OtherActualTimes {

key OtherActualTimesID : Integer;
WorkPerformanceID : Integer;
AchievementCode : String;
Personnel : Integer;
StartTime : Time;
EndTime : Time;
CreateUser : String;
CreateDate : Date;
UpdateUser : String;
UpdateDate : Date;
};

entity ProductPerformance {

key ProductPerformanceID : Integer;
DailyReportDate : Date;
DayAndNight : String;
Group : String;
FacilityNo : String;
CreateUser : String;
CreateDate : Date;
UpdateUser : String;
UpdateDate : Date;
};

entity ProductResults {

key NumberOfProductionsID : Integer;
ProductPerformanceID : Integer;
ProductNumber : String;
NumberOfSetUps : Integer;
NumberOfProductions : Integer;
NumberOfPrograms : Integer;
Message : String;
CreateUser : String;
CreateDate : Date;
UpdateUser : String;
UpdateDate : Date;
};
entity DefectiveProductResults {

key NumberOfDefectsID : Integer;
ProductPerformanceID : Integer;
ProductNumber : String;
NumberOfSetUps : Integer;
NumberOfDefects : Integer;
BadCauseCodes : String;
EPRNM : String;
CreateUser : String;
CreateDate : Date;
UpdateUser : String;
UpdateDate : Date;
};

entity BasicOrderMasterJournalReceived {
key BasicOrderMasterJournalReceivedID:Integer;
UpdateClassification : String;
DataClassification : String;
ProcessingEmployeeCode : String;
Dateprocessed : String;
ProcessingTime : String;
Destination : String;
Destinationconstructionarea : String;
Destinationshippingpoint : String;
Partnumber : String;
Processcodefinalprocess : String;
Deliverydestination : String;
DESTINATSTRUCTEAREA : String;
Receivingplace : String;
Address : String;
Applicablestartdateofdelivery : String;
Applicableenddateofdelivery : String;
Orderer : String;
Orderersoffice : String;
Orderingparty : String;
Orderersconstructionarea : String;
OrdererReceipt : String;
Number : String;
Itemname : String;
Numberofboxes : String;
Boxtype : String;
Unit : String;
ShelfNo : String;
Partsperson : String;
Palletclassification : String;
Specialnote1Referenceinformation1 : String;
Specialnote2Referenceinformation2 : String;
Specialnote3Referenceinformation3 : String;
Kanbanreadingclassification : String;
Arrangementclassification : String;
Kanbancycleclassification : String;
Kanbancycleday : Integer;
Kanbancycle : Integer;
Kanbancycleafter : Integer;
KanbancycleWeekly : String;
Kanbanprocessingclassification : String;
Turnovercheckintervaldays : Integer;
Increasedecreasesheetdelaycoefficient : Integer;
UpperLimitSettingofOutgoingTransfersPerFlight : String;
Lowerlimitofoutgoingbalancepertransaction : String;
Upperlimitofoutgoingbalanceperdelivery : Integer;
Outfeedperrunoutlowerlimitsetting : Integer;
Upperlimitofrunoutperdelivery : String;
LowLimitofOutfeedActionSetting : String;
UpperLimitofVariationofRealNumberofInputs : Integer;
Actualinputfluctuationlowerlimit : Integer;
ClassificationofKanbanissue : String;
ResponsedeliverydateLT : Integer;
Deliverydateconfirmationrelayclassification : String;
Deliverydateconfirmationclassification : String;
Backendprocesspartnumber : String;
Backendprocesscode : String;
UpdateDate : DateTime;
};

entity BasicOrderMasterJournalReceivedR {
key BasicOrderMasterJournalReceivedRID:Integer;
UpdateDistinction : String;
Differentiationofdata : String;
ProcessingEmployeeConcepts : String;
Processingyearandmonth : String;
Processingtime : String;
Processingfirst : String;
Processingworkarea : String;
Teshigashirafactory : String;
Numberofitems : String;
Worksymbol : String;
Inclusion : String;
Inclusionoffirstworkarea : String;
Includefirst : String;
Location : String;
Applicablestartdate : String;
Applicableenddate : String;
Orderofwork : Integer;
PreviousworksInclusion : String;
FormerworkInclusionzone : String;
PreviousworkInclusionoftheformerworksite : String;
Inclusionabbreviation : String;
Subprojectincorporatedfirst : String;
Subengineeringworkareaincorporatedfirst : String;
Subprojectsincorporatedfirst : String;
Intermediateworks : String;
Intermediatework : String;
theintermediateworkarea : String;
UpdateDate : DateTime;
};

entity BasicOrderMasterJournalReceivedB {
key BasicOrderMasterJournalReceivedBID:Integer;
UpdateClassification : String;
DataClassification : String;
ProcessingEmployeeCode : String;
Dateprocessed : String;
ProcessingTime : String;
Destination : String;
Destinationconstructionarea : String;
Destinationshippingpoint : String;
Partnumber : String;
Processcode : String;
Deliverydestination : String;
Deliveredto : String;
Receivingplace : String;
Address : String;
Applicablestartdateofdelivery : String;
Applicableenddateofdelivery : String;
Orderingdelivery : String;
Orderavailability : String;
UpperLimitRateperFlight : Integer;
Lowerlimitofdispatchperflight : Integer;
Maximumnumberofpiecesperdelivery : Integer;
Lowerlimitofallocationperflight : Integer;
Directequalizationsetting : String;
UpdateDate : DateTime;

};
