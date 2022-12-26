public with sharing class Paridad {
    public static void ObtenerParidad(Integer numero){
        if(math.mod(numero,2)==0){
            system.assertEquals(math.mod(numero,2), 0);
            System.debug('El numero '+numero+' es par!!!');
        }
        else{
            System.debug('El numero '+numero+' es impar!!!');
        }

    }
}
