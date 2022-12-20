public with sharing class OperatorsExampleThree {
    public static void testOperadoresComparacion(){
        //mayor a - mayor o igual a
        System.debug('El valor logico a 100>5');
        System.debug(100>5);

        System.debug('El valor logico a 5>=5');
        System.debug(5>=5);

        //menor a - menor o igual a
        System.debug('El valor logico a 100<5');
        System.debug(100<5);

        System.debug('El valor logico a 5<=5');
        System.debug(5<=5);

        //operador de igualdad
        System.debug('El valor logico a 5==5');
        System.debug(5==5);
        System.debug('El valor logico a 4==5');
        System.debug(4==5);

        //operador de igualdad exacta
        Object numA=5, numB=5;
        System.debug(numA==numB);
        System.debug(numA===numB);//Igualdad exacta, dando False
        numB = numA;
        System.debug(numA===numB);//Igualdad exacta, dando True

        //Operador de desigualdad
        System.debug(8!=5); //resultado true
        System.debug(8!=8); //resultado false

        //Operador AND
        Boolean v = true, vv = true, f = false, ff = false, fv = false;
        String textA = 'ejemplo', textB = 'ejemplo', textC = 'distinto';
        Decimal numX = 5 ,numY = 5, numZ = 10;

        System.debug(v && numX == numY);//true
        System.debug(v && numX == numZ);//false
        System.debug(f && numX == numY);//false
        System.debug(v && vv);//true
        System.debug(numX == numY && textA == textB);//true


        //Operador OR
        System.debug(v || numX == numZ);//true
        System.debug(ff || textA == textB);//true
        System.debug(f || vv);//true
        System.debug(f || textA == textC);//false
        System.debug(numX == numZ || textA == textC);//false

    }
}