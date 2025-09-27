public with sharing class ProductCallout {
    @future(callout=true)
    public static void getProducts() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://jsonplaceholder.typicode.com/posts');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        if(response.getStatusCode() == 200) {
            System.debug('Response: ' + response.getBody());
        }
    }
}
