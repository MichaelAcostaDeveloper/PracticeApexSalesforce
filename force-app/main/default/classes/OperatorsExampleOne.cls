public class OperatorsExampleOne {
    public static void testOperadoresComparacion(){
        //DECLARACION DE VARIABLES
        Decimal numMayor = 10;
        Decimal numZero = 0;
        String errorAsig =' ';
        String unaPalabra ='Hello';
        String palabraComplementaria ='World!';
        Decimal numExample = 5;

        //OPERADOR SUMA
        System.debug('SUMA - la suma de '+numMayor+ '+'+numExample+ '=');
        System.debug(numMayor+numExample);
        System.debug('SUMA - concatenacion detexto :'+unaPalabra+ ' + '+palabraComplementaria+ '=' +unaPalabra+palabraComplementaria);

        //OPERADOR SUMA
        System.debug('RESTA - la resta de '+numMayor+ '-'+numExample+ '='+(numMayor-numExample));//en una sola linea de codigo esta el resultado
        
        //OPERADOR DE MULTIPLICACION
        System.debug('PRODUCTO - el producto de '+numMayor+ '*'+numExample+ '='+(numMayor*numExample));
        
        //OPERADOR DIVISION
        System.debug('DIVISION - el cociente de '+numMayor+ '/'+numExample+ '='+(numMayor/numExample));
        
        //OPERADOR DE ASIGNACION DE MULTIPLICACION
        System.debug('Asignacion de producto:');
        numMayor *=numExample;
        System.debug('es: '+numMayor);

        //OPERADOR DE ASIGNACION DE DIVISION
        System.debug('Asignacion de division:');
        numMayor /=numExample;
        System.debug('es: '+numMayor);

        //OPERADOR DE ASIGNACION DE SUMA
        System.debug('Asignacion de suma:');
        numMayor +=numExample;
        System.debug('es: '+numMayor);

        //OPERADOR DE ASIGNACION
        numZero = numMayor;
        numMayor = numExample;
        System.debug('El primer valor es: '+errorAsig+', el segundo valor es: '+numMayor);
      }
    }