public with sharing class CienCuetasEliminadas {
    public static void eliminarCuentas (Integer numero){
        if(numero==100){
            List<Account> listaParaEliminar = new List<Account>();
            listaParaEliminar = [SELECT Id
                                FROM Account
                                ORDER BY CreatedDate DESC
                                LIMIT 100];
            delete listaParaEliminar;
            System.debug('Se han eliminado las 100 ultimas cuentas!!!');
        }
        else{
            System.debug('El valor ingresado no es 100!!!');
        }
    }
}