@isTest
public class WarrantyHandlerTest {

    @isTest static void testServiceRequestCreation() {
        // Create Product (add required fields)
        Product__c p = new Product__c(
            Name = 'Test Product',
            Serial_Number__c = 'SN-1001',
            Model_Number__c = 'M-123',   // if required
            Price__c = 5000              // if required
        );
        insert p;

        // Create Warranty (add required fields)
        Warranty__c w = new Warranty__c(
            Name = 'Test Warranty',
            Start_Date__c = Date.today(),
            End_Date__c = Date.today().addMonths(6),
            Product__c = p.Id,
            Warranty_Term__c = 12        // if required
        );
        insert w;

        // Create Service Request (picklist value must exist)
        Service_Request__c sr = new Service_Request__c(
            Name = 'Test SR',
            Product__c = p.Id,
            Related_Warranty__c = w.Id,
            Status__c = 'New' // ✅ replace with a real picklist value from your org
        );
        insert sr;

        // Verify
        Service_Request__c insertedSR = [
            SELECT Id, Status__c, Product__c, Related_Warranty__c
            FROM Service_Request__c
            WHERE Id = :sr.Id
        ];

        System.assertEquals('New', insertedSR.Status__c);
        System.assertEquals(p.Id, insertedSR.Product__c);
        System.assertEquals(w.Id, insertedSR.Related_Warranty__c);
    }
}
