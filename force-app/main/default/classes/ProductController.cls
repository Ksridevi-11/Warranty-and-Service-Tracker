public with sharing class ProductController {
    @AuraEnabled(cacheable=true)
    public static List<Product__c> getProducts() {
        return [SELECT Id, Name, Serial_Number__c, Price__c FROM Product__c LIMIT 5];
    }
}
