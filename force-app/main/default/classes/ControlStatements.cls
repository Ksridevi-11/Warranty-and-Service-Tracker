public class ControlStatements {
    public static void checkWarranty(Warranty__c w) {
        if (w.End_Date__c < Date.today()) {
            System.debug('Warranty is expired.');
        } else {
            System.debug('Warranty is still active.');
        }

        // Loop through service requests
        for (Service_Request__c sr : [SELECT Id, Status__c FROM Service_Request__c LIMIT 5]) {
            System.debug('Service Request: ' + sr.Status__c);
        }
    }
}
