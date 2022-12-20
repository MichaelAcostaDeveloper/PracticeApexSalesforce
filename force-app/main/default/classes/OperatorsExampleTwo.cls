public with sharing class OperatorsExampleTwo {
    public static void testOperadoresComparacion(){
        //DECLARACION DE VARIABLES
        Decimal numMayor = 10;
        Decimal numZero = 0;
        String errorAsig =' ';
        String unaPalabra ='Hello';
        String palabraComplementaria ='World!';
        Decimal numExample = 5;

        //operador de incremento
        Decimal varX= 6;
        System.debug(varX);//se imprime el 6
        System.debug(varX++);//se imprime el 6, pero listo para incrementar
        System.debug(varX); //se imprime 7
        System.debug(++varX);//se imprime el 8, valor ya incrementado
        System.debug(varX); //se imprime 8

        //operador de decremento
        System.debug(varX);//se imprime el 8
        System.debug(varX--);//se imprime el 8, pero listo para disminuir
        System.debug(varX); //se imprime 7
        System.debug(--varX);//se imprime el 6, valor ya disminuido
        System.debug(varX); //se imprime 6


    }


}