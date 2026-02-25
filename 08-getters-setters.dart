
void main() {
  final miCuadrado = Square(side: 7);
  
  print('area: ${miCuadrado.area}');
  }

class Square {
  double _side;
  
  Square ({required double side}) 
    : assert(side >= 0, 'Side must be >= 0'),
     _side = side;
  
  set side(double value) {
    print('Setting new value $value');
    if (value < 0) throw 'Value be >= 0';
    
    _side = value;
  }
  
  double get area {
    return _side * _side;
  }
}