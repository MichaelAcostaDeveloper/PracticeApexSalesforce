public with sharing class DML_Examples {
//insert account and custom objects
public static Id insertAccount(String nombAccount){
    Account objAccount = new Account();
    objAccount.Name = nombAccount;
    insert objAccount;
    System.debug('La cuenta insertada es: '+objAccount);
    return objAccount.Id;
}
public static Id insertEmpleado(String nombEmpleado){
    Empleado__c objEmpleado = new Empleado__c();
    objEmpleado.Name = nombEmpleado;
    System.debug('El empleado insertado es: '+objEmpleado);
    insert objEmpleado;
    return objEmpleado.Id;
}

public static Account updateAccount(String newName, String newId) {
    Account newAccount = new Account();
    newAccount.Name = newName;
    newAccount.Id = newId;
    update newAccount;
    return newAccount;
}

public static void deleteAccount(String idAccount){
    Account objAccount = [SELECT Id FROM Account WHERE Id =: idAccount];
    delete objAccount;

}

public static void upsertObject (String idAccount, String nombAccount){
    Account objAccount = new Account();
    if(idAccount!=''){
        objAccount.Id = idAccount;
    }
    objAccount.Name = nombAccount;
    upsert objAccount;
}

public static void undeleteObjectExample(String nombreCuentaParaRecuperar){
nombreCuentaParaRecuperar = '%'+nombreCuentaParaRecuperar+'%';
Account[] cuentasParaRecuperar = [SELECT Id, Name FROM Account WHERE Name like :nombreCuentaParaRecuperar ALL ROWS];//ALL ROWS SIRVE PARA BUSCAR INCLUSIVE EN LA PAPELERA DE RECICLAJE
undelete cuentasParaRecuperar;
}
}
