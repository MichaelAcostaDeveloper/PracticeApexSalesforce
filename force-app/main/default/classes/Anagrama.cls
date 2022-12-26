public with sharing class Anagrama {
    public static void compararPalabras(String cadena1, String cadena2) {
        //uso de cadenas como listas de caracteres
        String[] arrayCadena1 = (cadena1.toLowerCase().split(''));
        String[] arrayCadena2 = (cadena2.toLowerCase().split(''));
        //ordenacion de cadenas
        arrayCadena1.sort();
        arrayCadena2.sort();
        //comparacion:
        if(arrayCadena1.equals(arrayCadena2)){
            System.debug('Las palabras son anagramas!!!');
        }
        else{
            System.debug('Las palabras no son anagramas!!!');
        }

        /*
        Integer resultado1 = metodoContadorLetras(cadena1);
        Integer resultado2 = metodoContadorLetras(cadena2);
        Boolean bandera =false;
        if(resultado1 == resultado2){
            for (Integer i = 0; i < cadena1.length(); i++) {
                for (Integer j = 0; j < cadena2.length(); j++) {
                    if(cadena1.charAt(i)==cadena2.charAt(j)){
                        bandera = true;
                        break;
                    }else{
                    System.debug('Las palabras no son anagramas!!!');
                    }
                }
            }
        }else{
            System.debug('Estas palabras no son anagramas!!!!');
        }

    }

    public static Integer metodoContadorLetras(String cadena){
        Integer contadorLetras = 0;
        for (Integer i = 0; i < cadena.length(); i++) {
            if(cadena.charAt(i) != null){
                contadorLetras++;
            }
        }
        return contadorLetras;
            */
    }

}
