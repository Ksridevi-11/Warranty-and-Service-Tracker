global class WarrantyExpiryScheduler implements Schedulable {
    global void execute(SchedulableContext ctx) {
        System.enqueueJob(new WarrantyExpiryQueueable());
    }
}
