trigger ExceptionsTrigger on Account (before delete) {
          List<Account> listAcc = new List<Account>();
          listAcc = [SELECT Id FROM Account
                    WHERE Id IN (SELECT AccountId FROM Opportunity)
                    AND Id IN :Trigger.old];
          for (Account a : listAcc) {
                    trigger.oldMap.get(a.Id).addError(
                              'No puede borrar un cuenta con opp relacionadas!!!'
                    );
          }

}