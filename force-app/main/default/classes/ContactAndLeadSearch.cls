public with sharing class ContactAndLeadSearch{
    public static  List<List<sObject>> searchContactsAndLeads(String smith) {
        List<List<sObject>> searchList = [FIND 'smith' IN All FIELDS
                                      RETURNING Contact(FirstName,LastName),Lead(FirstName,LastName)];

return searchList;
    }
}
