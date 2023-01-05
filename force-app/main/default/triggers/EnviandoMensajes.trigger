trigger EnviandoMensajes on Contact (after insert, after delete) {
          if(Trigger.isInsert){
                    Integer registroContacts = Trigger.new.size();
                    //invocacion a un metodo de alguna clase
          }else if(Trigger.isDelete){
                    //Process despues de borrar.
          }
          }