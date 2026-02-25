
void main() {
  final wolverine = new Hero(name: "Logan", power: "Regeneración");
  
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}
          
class Hero {
  String name;
  String power;

  Hero({required this.name, required this.power});
  
  @override //sirve para sobrescribir una funcion
  String toString() {
    return '$name - $power';
  }
}