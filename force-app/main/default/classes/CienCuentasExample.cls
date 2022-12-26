public with sharing class CienCuentasExample {
//metodo que reciba como parametro un string
//el metodo devuelve el tamaño de la lista que almacena  las 100 cuentas
public static Integer crearCuentas(String NombreCuenta){
List<Account> listaDeCuentas = new List<Account>();//lista de cuentas creadas para insertar
List<Account> listaCuentasParaTestear = new List<Account>();//lista de cuentas para testear
for (Integer i = 1; i < 101; i++) {
    Account objAccount = new Account();
    objAccount.Name = NombreCuenta+' '+i;
    listaDeCuentas.add(objAccount);
}
insert listaDeCuentas;
//testeo de cuentas
for (Integer i = 0; i < listaDeCuentas.size(); i++) {
    Account AccountTest = listaDeCuentas.get(i);
    if(string.isNotBlank(AccountTest.Id)){
        listaCuentasParaTestear.add(AccountTest);
    }
}
Integer contador = listaCuentasParaTestear.size();
return contador;
}
}

