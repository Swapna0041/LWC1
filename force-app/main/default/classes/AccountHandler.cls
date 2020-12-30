public with sharing class AccountHandler {
    public static Account insertNewAccount(String Name) {

Account a = new Account();
a.name = Name;
    try {
     insert a;
     return a;   
    } catch (Exception e) {
      return null;  
    }
    }
}
