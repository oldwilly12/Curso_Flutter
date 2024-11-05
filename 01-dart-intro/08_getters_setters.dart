//PRIMER CONSTRUCTOR
/*void main() {
  
  final mySquare = Square( side: 10);
  
  print ('area: ${mySquare.calculateArea()}');
}

class Square {
  
  double side; //side * side
  
  Square({ required this.side });
  
  double calculateArea(){
    return side*side;
  }
}*/

void main() {
  
  final mySquare = Square( side: 10);
  
  print ('area: ${mySquare.area}');
}

class Square {
  
 double _side; //side * side para convertir side en propiedad privada se escribiria de la siguiente manera _side
  
  Square({ required double side })
    : assert (side >= 0, 'side must be >= 0'), 
    _side = side;
  
  double get area {
    return _side * _side;
  }
  
  set side(double value){
    print('setting new value $value');
    if (value < 0) throw 'Value must be >=0';
      
    _side = value;
    
  }
  
  
  
  double calculateArea(){
    return _side * _side;
  }
}
