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
}