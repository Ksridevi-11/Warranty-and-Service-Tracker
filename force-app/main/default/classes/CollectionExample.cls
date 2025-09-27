public class CollectionExample {
    public static void demoCollections() {
        // List
        List<String> productNames = new List<String>{'Phone', 'Laptop', 'Tablet'};
        
        // Set (unique values)
        Set<String> warrantyStatuses = new Set<String>{'Active', 'Expired', 'Active'};
        
        // Map (Key → Value)
        Map<String, Integer> stock = new Map<String, Integer>();
        stock.put('Phone', 50);
        stock.put('Laptop', 30);
        
        System.debug('Products: ' + productNames);
        System.debug('Statuses: ' + warrantyStatuses);
        System.debug('Stock Map: ' + stock);
    }
}
