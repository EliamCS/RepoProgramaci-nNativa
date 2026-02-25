
void main() {
  final Map<String, dynamic> rawJason = {
    'name': 'Pedro Parker',
    'power': 'Es una araña practicamente',
    'isAlive': true
  };
  
  final Map<String, dynamic> wolverineJson = {
    'name': 'Logan',
    'power': 'Se cura en fa',
    'isAlive': true
  };
  
  final wolverine = Hero.fromJson(wolverineJson);
  
  final ironman = Hero(
    name:'Antonio Stark', 
    power:'Tiene varo', 
    isAlive: false);
  
  final spiderman = Hero(
  name: rawJason['name'],
  power: rawJason['power'],
  isAlive: rawJason['isAlive']
  );
  
  print(ironman);
  print(spiderman);
  print(wolverine);
}

class Hero {
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  Hero.fromJson(Map<String, dynamic> json)
  : name = json['name'],
    power = json['power'],
    isAlive = json['isAlive'];
  
  @override
  String toString() {
    return '$name, $power - ${isAlive ? 'Si :)' : 'Nel :('}';
  }
}