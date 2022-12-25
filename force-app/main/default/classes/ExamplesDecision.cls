public with sharing class ExamplesDecision {
    public  static void condiciones(String palabra, Decimal numeroCualquiera, Boolean bandera, Account objCuenta,
                                    List<Account> listaCuentas, Map<String,Account> mapaCuentas){
    if(palabra == 'Valido'){
        System.debug('IF - La condicion es verdadera, la palabra es: '+palabra);
    }
    else{
        System.debug('ELSE - La condicion no se cumplio valor esperado Valido, valor recibido: '+palabra);
    }
    if(numeroCualquiera >=10){
        System.debug('IF - La condicion es verdadera, el numero cualquiera es: '+numeroCualquiera);
    }
    else{
        System.debug('ELSE - La condicion no se cumplio valor esperado >=10, valor recibido: '+numeroCualquiera);
    }
    if(bandera == true){
        System.debug('IF - La condicion es verdadera, el valor de la bandera es: '+bandera);
    }
    else{
        System.debug('ELSE - La condicion no se cumplio valor esperado True, valor recibido: '+bandera);
    }
    if(objCuenta !=null){
        System.debug('IF - La condicion es verdadera, el valor del objeto es: '+objCuenta);
        if((objCuenta.Name).equals('Teresa')){
            System.debug('IF - La condicion es verdadera, el valor de objCuenta.Name es: '+objCuenta.Name);
        }
    }
    else{
        System.debug('ELSE - La condicion no se cumplio se esperaba un obj diferente a nulo, valor recibido: '+objCuenta);
    }
    if(!listaCuentas.isEmpty()){
        System.debug('IF - La condicion es verdadera, la lista de cuentas no es vacia: '+listaCuentas);
    }
    else{
        System.debug('ELSE - La condicion no se cumplio valor esperado lista no vacia, valor recibido: '+listaCuentas);
    }
    if(mapaCuentas.containsKey('Principal')){
        System.debug('IF - La condicion es verdadera, el mapa de cuentas tiene la llave "Principal": '+mapaCuentas);
    }
    else{
        System.debug('ELSE - La condicion no se cumplio, el mapa no contiene una llave llamada principal: '+mapaCuentas);
    }
    }

    public static void elseIfCondition(Decimal numero){
        System.debug('ELSE IF El numero que ingresa al metodo es: '+numero);
        if(numero == 10){
            System.debug('ELSE IF el numero es igual a 10');
        }
        else if(numero == 1){
            System.debug('ELSE IF el numero es igual a 1');
        }
        else if(numero == 2){
            System.debug('ELSE IF el numero es igual a 2');
        }
        else if(numero == 3){
            System.debug('ELSE IF el numero es igual a 3');
        }
        else if(numero == 4){
            System.debug('ELSE IF el numero es igual a 4');
        }
        else if(numero == 5){
            System.debug('ELSE IF el numero es igual a 5');
        }
        else if(numero >= 5 && numero < 100){
            System.debug('ELSE IF el numero es igual o mayor a 5 y menor que 100');
        }
        else if(numero >1000){
            System.debug('ELSE IF el numero es mayor o igual a 1000');
        }
    }

    public static String dia(Decimal numero){
        if(numero ==1){
            return 'Lunes';
        }
        else if(numero == 2){
            return 'Martes';
        }
        else if(numero == 3){
            return 'Miercoles';
        }
        else if(numero == 4){
            return 'Jueves';
        }
        else if(numero == 5){
            return 'Viernes';
        }
        else if(numero == 6){
            return 'Sabado';
        }
        else if(numero == 7){
            return 'Domingo';
        }
        else{
            return 'Numero no valido!!!';
        }

    }

    public static void operacionesMatematica(Decimal a, Decimal b, String operacion){
        Decimal result = 0;
        switch on operacion {
            when 'Suma' {
                result = a + b;
                System.debug('La suma es: '+result);
            }
            when 'Resta' {
                result = a - b;
                System.debug('La resta es: '+result);
            }
            when 'Producto' {
                result = a * b;
                System.debug('El producto es: '+result);
            }
            when 'Division' {
                result = a + b;
                System.debug('El cociente es: '+result);
            }
            when else {
                System.debug('Operacion no identificada');
            }
        }
    }
}