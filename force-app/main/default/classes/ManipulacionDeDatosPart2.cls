public with sharing class ManipulacionDeDatosPart2 {

    public static Decimal suma(Decimal a, Decimal b){
        Decimal resp = a +b;
        System.debug('El resultado es: '+resp);
        return resp;
    }

    public static Account crearCuenta(String NamePorCodigo){
        Account obj = new Account();
        obj.Name = NamePorCodigo;
        obj.AccountSource = 'Creado por codigo';
        System.debug('obj creado: '+obj);
        return obj;
    }

    public static void llamadaAMetodos(){
        suma(5,6);
        crearCuenta('Camila Asanza');
    }

}