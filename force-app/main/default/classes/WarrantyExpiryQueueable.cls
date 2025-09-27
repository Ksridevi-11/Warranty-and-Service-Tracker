public class WarrantyExpiryQueueable implements Queueable {
    public void execute(QueueableContext ctx) {
        List<Warranty__c> listW = [
            SELECT Id, Product__c, End_Date__c
            FROM Warranty__c
            WHERE End_Date__c = :Date.today()
        ];
        List<Service_Request__c> toCreate = new List<Service_Request__c>();
        for (Warranty__c w : listW) {
            Service_Request__c sr = new Service_Request__c(
                Name = 'Auto-Generated Expiry Request',
                Status__c = 'Open',
                Product__c = w.Product__c
            );
            toCreate.add(sr);
        }
        if (!toCreate.isEmpty()) insert toCreate;
    }
}
