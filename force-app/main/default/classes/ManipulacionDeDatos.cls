public with sharing class ManipulacionDeDatos {
    public static void creationObjectsForm1(){
        Account objCuenta = new Account();
        objCuenta.Name = 'Michael';
        objCuenta.AccountNumber = '2323234567';
        objCuenta.AccountSource = 'Identificado';
        objCuenta.AnnualRevenue = 56000;
        objCuenta.NumberOfEmployees = 345;
        System.debug('La cuenta creada es: '+objCuenta);
    }

    public static void creationObjectsForm2(){
        Opportunity objOpportunity = new Opportunity(
            Name = 'Michael Fernando Acosta ',
            Description = 'Oportunida testeo',
            LeadSource = 'No indexado',
            IsPrivate = true);
        System.debug('La oportunidad creada es: '+objOpportunity);
    }

    public static void creationObjectsCustomForm3(){
            Empleado__c objEmpleado = new Empleado__c(
                Name = 'Camila Asanza ',
                Correo__c = 'acosts@kio.com',
                Telefono__c = '09909097',
                Sueldo__c = 14560);
        System.debug('El empelado creado es:'+objEmpleado);
    }

    public static List<Opportunity> creandoListaOpp (){
        List<Opportunity> listOpp = new List<Opportunity>();
        for (Integer i = 0; i < 10; i++) {
            Opportunity objOpp = new Opportunity(
                Name = 'Nombre '+i,
                Description = 'Oportunidad testeo',
                LeadSource = 'No indexado',
                IsPrivate = true);
                listOpp.add(objOpp);
        }
        return listOpp;
     
    }

    public static void usandoMapas(){
        List<Opportunity> listaPrueba = creandoListaOpp();
        List<Opportunity>listOpp = new List<Opportunity>(listaPrueba);
        Map<String,List<SObject>> mapaOpp = new Map<String,List<SObject>>();
        mapaOpp.put('OPORTUNIDAD', listOpp);
        System.debug(mapaOpp);
    }
}