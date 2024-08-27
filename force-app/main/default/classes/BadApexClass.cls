public with sharing class BadApexClass {
   
    @AuraEnabled
    public static string getAccountName(String Id){
        try {
           List<Account> act = [select Name from Account where id = :id];
           return act[0].Name;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
        return null;
    }
  

}