trigger ObjetosRelacionados on Account (after insert, after update) {
//creamos una lista
List<Opportunity> oppList = new List<Opportunity>();
//obtener las oportunidades relacionadas a las Accounts
Map<Id, Account> accts_opps = new Map<Id, Account>(
          [SELECT Id, (SELECT Id FROM Opportunities) FROM Account WHERE Id IN :Trigger.new]
);

//Incluir opp por cada account siempre que no haya opp relacionadas a la account.
for(Account a : Trigger.New){
          if(accts_opps.get(a.Id).Opportunities.size() == 0){
                    oppList.add(new Opportunity(Name = a.Name + 'Opportunity',
                                                  StageName='Prospecting',
                                                  CloseDate=System.today().addMonths(1),
                                                  AccountId=a.Id));
          }
}
if(oppList.size() > 0){
          insert oppList;
}
}