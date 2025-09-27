public class SOQLExample {
    public static void runQuery() {
        // Query all Products with their Serial Numbers
        List<Product__c> products = [SELECT Id, Name, Serial_Number__c FROM Product__c LIMIT 5];
        
        System.debug('Queried Products: ' + products);
    }
}
