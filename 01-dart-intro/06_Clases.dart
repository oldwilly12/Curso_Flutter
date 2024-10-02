//CLASES EN DART
void main () {
  
  //"new" es opcional new Hero ('Logan')...
  final Hero wolverine = new Hero('Logan', 'Regeneracion'); // crear instancia del heroe //tipo Hero
  print ( wolverine );
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
  Hero ( this.name, this.power);
}

