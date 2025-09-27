public with sharing class WarrantyHandler {
    public static void calculateEndDates(List<Warranty__c> warranties) {
        for (Warranty__c w : warranties) {
            if (w.Start_Date__c != null && w.Warranty_Term__c != null) {
                try {
                    Integer months = Integer.valueOf(w.Warranty_Term__c);
                    w.End_Date__c = w.Start_Date__c.addMonths(months);
                } catch(Exception ex) {
                    // optionally add an error if you want to block save:
                    // w.addError('Invalid Warranty Term');
                }
            }
        }
    }
}
