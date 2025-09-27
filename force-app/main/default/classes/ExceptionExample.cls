public class ExceptionExample {
    public static void safeQuery() {
        try {
            List<Product__c> products = [SELECT Id, Name FROM Product__c LIMIT 1];
            System.debug('Found: ' + products[0].Name);
        } catch (Exception e) {
            System.debug('Error occurred: ' + e.getMessage());
        }
    }
}
