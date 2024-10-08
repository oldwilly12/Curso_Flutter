void main () async{
  print ('Inicio del programa');
  
  try{
  final value = await httpGet('https://fernando-herrera.com/cursos');
  print (value);
    
  } catch(err){
    print('Tenemos un error: $err');
  }
  
  
  print ('Fin del programa');
}

//Funciones asincronas siempre daran un Future
Future<String> httpGet( String url ) async {
  
  await Future.delayed( Duration(seconds: 1)); // await es como decir que hasta que se realize esta actividad
  
  throw 'Error en la peticion';
  
  //return 'Tenemos un valor de la peticion';

}






