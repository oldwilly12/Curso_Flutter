/* void main() {
 print( greetEveryone() );
}

String greetEveryone(){ //we put it like a string
  return 'Hello everyone!';
} */

void main() {
  print (greetEveryone());
  
  print ('Suma: ${addTwoNumbers(10,20)}');
  
  print ('Suma2 : ${addTestTwoNumbers(10,20)}');
  
  print ('Suma optional: ${addTwoNumbers2(10)}');
  
  print ( greetPerson(name: 'Fernando', message:'Hi,'));
  
}

int addTestTwoNumbers (int a,int b) =>  a+b ;
String greetEveryone() => 'Hello everyone!'; //retornar valores de manera imediata

int addTwoNumbers(int a, int b ) {
  return a + b;
}

int addTwoNumbers2 (int a,[int b = 0]) {  //para hacer opcional la entrada de algun valor "b", es entero opcional
 // b = b ?? 0; //condicional si b tiene valor "??" sino se le da este valor otra forma de escribirlo es "b??=0;"
  return a+b;                             
}


String greetPerson({ required String name, String message ='Hola, '}) {
  //El "required" obligar al usuario a que nos de un valor
  //al poner los valores entre llaves({}) los vuelve opcionales
  return '$message Fernando';
}

