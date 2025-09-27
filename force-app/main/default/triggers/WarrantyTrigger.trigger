trigger WarrantyTrigger on Warranty__c (before insert, before update) {
    if (Trigger.isBefore) {
        if (Trigger.isInsert || Trigger.isUpdate) {
            WarrantyHandler.calculateEndDates(Trigger.new);
        }
    }
}
