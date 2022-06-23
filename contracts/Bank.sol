// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
 
contract Bank {
 
   //
   // Variables de estado
   //
  
   // queremos que otros contratos no puedan ver el balance de los usuarios en el banco
   // Agregue la visibilidad adecuada
   mapping (address => uint) balances;
  
   // Queremos que se pueda saber si un usuario ya es parte del banco o no, tambien que lo puedan saber otros contratos
   mapping (address => bool) enrolled;
 
   // Queremos que cualquier persona pueda saber quien es el dueño del banco
   address owner;
  
   //
   // Eventos - acciones publicas de lo que pasa dentro del banco!
   //
  
   // Agrega los argumentos adeucados para los siguientes eventos
   event LogEnrolled();
   event LogDepositMade();
 
   /* Create an event called LogWithdrawal */
   /* Add 3 arguments for this event, an accountAddress, withdrawAmount and a newBalance */
 
   // Crea un evento que se llame logRetiro
   // Agregale 3 argumentos, una direccion de cuenta, el monto de retiro y el nuevo balance de la cuenta despues de haber retirado
   // los fondos
 
 
   //
   // Funciones
   //
 
   /* Recuerda utilizar la variable global adecuada para obtener la direccion de quien invoca la transaccion */
   constructor() {
       /// Asigna quien es el dueño del banco
   }
 
   /// @notice Get balance
   /// @return The balance of the user
   // A SPECIAL KEYWORD prevents function from editing state variables;
   // allows function to run locally/off blockchain
  
   /// @notice Devuelve el balance de una cuenta
   /// @return el balance del usuario
   // existe una palabra reservada especial que hace que la funcion no modifique variables de estado, utilizala
   function balance() public returns (uint) {
       /* Get the balance of the sender of this transaction */
       // Obten el balance de quien invoque esta funcion
   }
 
   /// @notice Enroll a customer with the bank
   /// @return The users enrolled status
   // Emit the appropriate event
 
   /// @notice Inscribre a un nuevo cliente al banco
   /// @return devuelve el status del cliente si ya es parte del banco o no
   // emita el evento correspondiente
   function enroll() public returns (bool){
   }
 
   /// @notice Deposit ether into bank
   /// @return The balance of the user after the deposit is made
   // Add the appropriate keyword so that this function can receive ether
   // Use the appropriate global variables to get the transaction sender and value
   // Emit the appropriate event   
 
   /// @notice Deposita ether en el banco
   /// @return Retorna el balance nuevo del usuario
   // agrega la palabra reservada adeucada a la funcio para que pueeda recibir ether
   // utiliza las variables globales adecuadas para obtener el addresss del remitente y el valor en ether
   // emite el evento correspondiente
   function deposit() public returns (uint) {
         // agregar el monto enviada al balance del usuario, invoca al evento asociado a un deposito luego retorna el nuevo
         // balance del ususario
   }
 
   /// @notice Withdraw ether from bank
   /// @dev This does not return any excess ether sent to it
   /// @param withdrawAmount amount you want to withdraw
   /// @return The balance remaining for the user
   // Emit the appropriate event   
 
   /// @notice Retira ether del banco
   /// @dev no debe retornar mas ether del que se envia
   /// @param withdrawAmount es el monto que se quiere retirar
   /// @return el balance restante del usuario despues del retiro
   // Emita el evento adecuado 
   function withdraw(uint withdrawAmount) public returns (uint) {
   }
}
pragma solidity ^0.8.0;
 
contract cincelBank {
 
   //
   // Variables de estado
   //
  
   // queremos que otros contratos no puedan ver el balance de los usuarios en el banco
   // Agregue la visibilidad adecuada
   mapping (address => uint) balances;
  
   // Queremos que se pueda saber si un usuario ya es parte del banco o no, tambien que lo puedan saber otros contratos
   mapping (address => bool) enrolled;
 
   // Queremos que cualquier persona pueda saber quien es el dueño del banco
   address owner;
  
   //
   // Eventos - acciones publicas de lo que pasa dentro del banco!
   //
  
   // Agrega los argumentos adeucados para los siguientes eventos
   event LogEnrolled();
   event LogDepositMade();
 
   /* Create an event called LogWithdrawal */
   /* Add 3 arguments for this event, an accountAddress, withdrawAmount and a newBalance */
 
   // Crea un evento que se llame logRetiro
   // Agregale 3 argumentos, una direccion de cuenta, el monto de retiro y el nuevo balance de la cuenta despues de haber retirado
   // los fondos
 
 
   //
   // Funciones
   //
 
   /* Recuerda utilizar la variable global adecuada para obtener la direccion de quien invoca la transaccion */
   constructor() {
       /// Asigna quien es el dueño del banco
   }
 
   /// @notice Get balance
   /// @return The balance of the user
   // A SPECIAL KEYWORD prevents function from editing state variables;
   // allows function to run locally/off blockchain
  
   /// @notice Devuelve el balance de una cuenta
   /// @return el balance del usuario
   // existe una palabra reservada especial que hace que la funcion no modifique variables de estado, utilizala
   function balance() public returns (uint) {
       /* Get the balance of the sender of this transaction */
       // Obten el balance de quien invoque esta funcion
   }
 
   /// @notice Enroll a customer with the bank
   /// @return The users enrolled status
   // Emit the appropriate event
 
   /// @notice Inscribre a un nuevo cliente al banco
   /// @return devuelve el status del cliente si ya es parte del banco o no
   // emita el evento correspondiente
   function enroll() public returns (bool){
   }
 
   /// @notice Deposit ether into bank
   /// @return The balance of the user after the deposit is made
   // Add the appropriate keyword so that this function can receive ether
   // Use the appropriate global variables to get the transaction sender and value
   // Emit the appropriate event   
 
   /// @notice Deposita ether en el banco
   /// @return Retorna el balance nuevo del usuario
   // agrega la palabra reservada adeucada a la funcio para que pueeda recibir ether
   // utiliza las variables globales adecuadas para obtener el addresss del remitente y el valor en ether
   // emite el evento correspondiente
   function deposit() public returns (uint) {
         // agregar el monto enviada al balance del usuario, invoca al evento asociado a un deposito luego retorna el nuevo
         // balance del ususario
   }
 
   /// @notice Withdraw ether from bank
   /// @dev This does not return any excess ether sent to it
   /// @param withdrawAmount amount you want to withdraw
   /// @return The balance remaining for the user
   // Emit the appropriate event   
 
   /// @notice Retira ether del banco
   /// @dev no debe retornar mas ether del que se envia
   /// @param withdrawAmount es el monto que se quiere retirar
   /// @return el balance restante del usuario despues del retiro
   // Emita el evento adecuado 
   function withdraw(uint withdrawAmount) public returns (uint) {
   }
}
