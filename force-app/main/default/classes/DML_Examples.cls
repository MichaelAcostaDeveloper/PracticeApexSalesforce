public with sharing class DML_Examples {
//insert, update, upsert, delete, undelete  account and custom objects
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
Account[] cuentasParaRecuperar = [SELECT Id, Name FROM Account WHERE Name like :nombreCuentaParaRecuperar ALL ROWS];
//ALL ROWS SIRVE PARA BUSCAR INCLUSIVE EN LA PAPELERA DE RECICLAJE
undelete cuentasParaRecuperar;
}

public static void testMethodDML(){
//INSERT
//Acceso a Id de Cuenta insertada por metodo.
Id IdCuentaInsertada = insertAccount('Cuenta creada por insercion en codigo');
//impresion del ID
System.debug('INSERT- ID DE CUENTA INSERTADA: '+IdCuentaInsertada);
//Creacion de un objeto oportunidad
Opportunity objOpp = new Opportunity(
    Name ='Micke crea oportunidad',
    Description = 'Test de oportunidad',
    AccountId = IdCuentaInsertada,
    StageName = 'Prospecting',
    CloseDate =System.today()+1
);
//insercion a la data de salesforce de la oportunidad
insert objOpp;
//consulta para obtener la oportunidad creada.
Opportunity objOpporInsertada = [SELECT Id, Name, AccountId FROM Opportunity WHERE Id =: objOpp.Id];
//impresion en pantalla de los resultados.
System.debug('INSERT - Opp insertada con la cuenta relacionada: '+objOpporInsertada);
System.debug('Id de la Cuenta Padre relacionada con la opp: '+objOpporInsertada.AccountId);
System.debug('Id de la Opportunity hija relacionada con Account: '+objOpporInsertada.Id);


//UPDATE
//A partir de una consulta extraemos un String con la notacion punto.
String nombreAnterior = [SELECT Id, Name FROM Account WHERE Id=:IdCuentaInsertada].Name;
System.debug('UPDATE - nombre de la cuenta: '+nombreAnterior);
//Usamos el metodo update con uno de los parametros un  ID conocido.
Account cuentaActualizada = updateAccount('Nombre actualizado',IdCuentaInsertada);
String nombreNuevo = [SELECT Id, Name FROM Account WHERE Id=:IdCuentaInsertada].Name;
System.debug('UPDATE - nombre de la cuenta despues del metodo update: '+nombreNuevo);


//DELETE
Id idCuentaParaBorrar = insertAccount('Creada para ser borrada!!!');
System.debug('DELETE - Id de la cuenta para borrar: '+idCuentaParaBorrar);
Account ultimaCuentaInsertada = [SELECT Name,Id, CreatedDate FROM Account ORDER BY CreatedDate DESC LIMIT 1];
System.debug('DELETE - Ultima cuenta insertada en la base de datos: '+ultimaCuentaInsertada);
deleteAccount(idCuentaParaBorrar);
System.debug('DELETE -Ultima cuenta insertada despues de usar el delete en la base es: '+ultimaCuentaInsertada);



//UPSERT
//SE INSERTA UNA NUEVA CUENTA
Id IdCuenta = insertAccount('cuenta creada por insertObjectExample');
System.debug('Ultima cuenta insertada en la base: '+ultimaCuentaInsertada);
//SE USA UPSERT SIN ID
upsertObject('', 'Cuenta MUY nueva');
//Se visualizan las dos ultimas cuentas insertadas
List<Account> ultimaDosCuentasInsertadas = [SELECT Name,Id, CreatedDate FROM Account ORDER BY CreatedDate DESC LIMIT 2];
System.debug('ultimaDosCuentasInsertadas en la base: '+ultimaDosCuentasInsertadas);
//Se filtra el nombre de la cuenta insertada en la linea 94
String nombAnterior = [SELECT Id, Name FROM Account WHERE Id=:IdCuenta].Name;
System.debug('UPSERT- NOMBRE DE LA CUENTA: '+nombAnterior);
//se usa UPSERT ingresando como parametros el id de la primera cuenta con un nombre diferente
upsertObject(idCuenta, 'Cuenta actualizada por Upsert');
//se filtra el nombre de la cuenta creada con upsert
String nombreUpsert = [SELECT Id, Name FROM Account WHERE Id=: IdCuenta].Name;
System.debug('UPSERT - nombre de la cuenta despues del upsert: '+nombreUpsert);



//UNDELETE
//instanciamos una lista de cuentas
List<Account> listaAccountsParaTestear = new List<Account>();
//incluimos dos cuentas
Account cuentaGenerica1 = new Account();
cuentaGenerica1.Name = 'Cuenta booker 1';
listaAccountsParaTestear.add(cuentaGenerica1);
listaAccountsParaTestear.add(new Account(Name = 'Cuenta booker 2'));
//insertamos a la base de datos
insert listaAccountsParaTestear;
//Filtro para las listas insertadas
List<Account> listaAccountsInsertadas = [SELECT Id, Name
                                        FROM Account
                                        WHERE Name LIKE '%Cuenta booker%'];
//Visualizacion de la primera account insertada
System.debug('UNDELETE - Nombre e Id de la primera cuenta: Name: '+listaAccountsParaTestear.get(0).Name + 'id: '+listaAccountsParaTestear.get(0).Id );
//Visualizacion de la segunda account insertada
System.debug('UNDELETE - Nombre e Id de la primera cuenta: Name: '+listaAccountsParaTestear.get(1).Name + 'id: '+listaAccountsParaTestear.get(1).Id );
//Visualizacion de los datos antes de eliminarlos
System.debug('UNDELETE - Datos antes de eliminarlos: '+listaAccountsInsertadas);
//Uso del metodo delete
delete  listaAccountsParaTestear;
//Visualizacion de la data despues de eliminar
System.debug('UNDELETE - Datos despues de eliminarlos: '+listaAccountsInsertadas);
//Uso del metodo UNDELETE
undeleteObjectExample('Cuenta booker');
//Visualizacion de la data despues de usar el metodo UNDELETE
System.debug('UNDELETE - DATOS despues del uso de UNDELETE: '+listaAccountsInsertadas);

}



}