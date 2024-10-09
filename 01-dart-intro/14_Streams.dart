void main(){
  //Los stream alguien debe estar ecuchandolos
  emitNumbers().listen((value){
    print ('Stream value: $value');
  });
}



Stream<int> emitNumbers(){
  
  
  //periodico emitir valores 1,2,3,4, ... hasta acbar cada segundo emitir
  return Stream.periodic( const Duration(seconds: 1), (value){
  //  print ('desde periodic $value');
    return value;
  }).take(5);
    //Take de los Stream es como "quiero que tomes tantas emiciones y cierres"
}

//LOS STREAM SON FLUJOS DE DATOS QUE PUEDE SER UN UNICO VALOR NINGUN VALOR
//O UNA SERIE DE VALORES A LO LARGO DEL TIEMPO