using app.interactions from '../db/interactions';

service CatalogService {

    entity Interactions_Header              as projection on interactions.Interactions_Header;
    entity Interactions_Items               as projection on interactions.Interactions_Items;
    entity WorkPerformance                  as projection on interactions.WorkPerformance;
    entity ActualWorkTime                   as projection on interactions.ActualWorkTime;
    entity EquipmentActualTime              as projection on interactions.EquipmentActualTime;
    entity OtherActualTimes                 as projection on interactions.OtherActualTimes;
    entity ProductPerformance               as projection on interactions.ProductPerformance;
    entity ProductResults                   as projection on interactions.ProductResults;
    entity DefectiveProductResults          as projection on interactions.DefectiveProductResults;
    entity BasicOrderMasterJournalReceived  as projection on interactions.BasicOrderMasterJournalReceived;
    entity BasicOrderMasterJournalReceivedB as projection on interactions.BasicOrderMasterJournalReceivedB;
    entity BasicOrderMasterJournalReceivedR as projection on interactions.BasicOrderMasterJournalReceivedR;
}
