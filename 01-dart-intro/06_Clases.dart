//CLASES EN DART
void main () {
  
  //"new" es opcional new Hero ('Logan')...
  final Hero wolverine = new Hero(name:'Logan', power: 'Regeneracion'); // crear instancia del heroe //tipo Hero
  print ( wolverine.toString() );
  print ( wolverine.name);
  print ( wolverine.power);
}

class Hero {
  
  String name; //para decir que son opcionales estos valores con String?
  String power; // <-- propiedades
  
  //Constructor es la funcion que se llama cuando se inicializa la instancia
 /* Hero( String pName, String pPower ){
    this.name =pName;  <-- This" hace referencia a las propiedades de arriba
    this.power = pPower; <-- "This" es opcional
    
    name = pName;
    power = pPower;  SALE ERROR EN ESTA PARTE PORQUE SE INICIALIZA TARDE LOS VALORES DE NAME ASI QUE SE HARA LO SIGUIENTE*/
  
  
 /* INICIALIZACION CONTROLADA:
  Hero (String pName, String pPower)
    : name = pName,
      power = pPower;
 inicializar en dart */
  
  //INICIALIZACION RAPIDA
  Hero ({ 
    required this.name, 
    this.power = 'Sin poder' });
  
  //OVERRIDE para buena practica para indicar que se sobre escribe algo
  @override
 String toString(){
   return '$name - $power';
 }