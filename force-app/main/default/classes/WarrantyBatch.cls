global class WarrantyBatch implements Database.Batchable<sObject> {
    global Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator('SELECT Id, End_Date__c FROM Warranty__c WHERE End_Date__c <= :Date.today()');
    }
    global void execute(Database.BatchableContext bc, List<Warranty__c> scope) {
        // process a batch
    }
    global void finish(Database.BatchableContext bc) {}
}
