trigger ClosedOpportunityTrigger on Opportunity (after insert ,after update) {
    // List<Opportunity> opplist= new List<Opportunity>();
     List<Task> oppList = new List<Task>();
    
     for(Opportunity a :  [SELECT ID,Name from Opportunity where Id In :Trigger.new And StageName='Closed Won'])
     {
         oppList.add(new Task(subject='Follow Up Test Task', whatId=a.Id));
     }
     if(oppList.size()>0){
         insert oppList;
     }
         
     }
 
 