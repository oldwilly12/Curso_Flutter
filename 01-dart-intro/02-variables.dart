void main () {
  
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['imopstor'];
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];
  
  // dynamic == null
  //dynamic can has all the the values but this start with a null value
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1,2,3,4,5,6];
  errorMessage = {1,2,3,4,5,6};
  errorMessage = () => true;
  errorMessage = null;
  
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  
  """);
}