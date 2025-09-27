public class FutureExample {
    @future
    public static void logWarrantyCount() {
        Integer count = [SELECT COUNT() FROM Warranty__c];
        System.debug('Total warranties: ' + count);
    }
}
