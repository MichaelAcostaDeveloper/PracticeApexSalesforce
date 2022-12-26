public with sharing class OrdenarCIfras {
    public static void ordena(Integer numero){
        //pasar un numero a una lista de numeros
        List<Integer> cifras = new List<Integer>();
        while(numero > 0 ){
            cifras.add(math.mod(numero,10));
            numero =(numero/10);
        }
        cifras.sort();
        System.debug(cifras);
    }
    public static void AltoABajo(Double n){
        String myD=String.valueOf(n);
        String[] arrayNumber = myD.split('');
        arrayNumber.sort();
        String sortNumber ='';
        for(Integer i = arrayNumber.size()-1; i >= 0; i--){
            sortNumber += arrayNumber[i];
        }
        System.debug(sortNumber);
    }

}
