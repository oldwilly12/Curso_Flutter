// async devuelve un future 
// anync* devuelve un Stream
void main() {
  emitNumber()
    .listen((int value){
      print('Stream value: $value');
    });
}

Stream<int> emitNumber() async*{
  
  final valuesToEmit = [1,2,3,4,5];
  
  for(int i in valuesToEmit){
    await Future.delayed( const Duration(seconds: 1));
    yield i; //Esto es como ceder un valor, como "Ten este valor ahora"
  }
  
  
}



