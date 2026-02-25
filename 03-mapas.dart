
void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Squirtle',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['echa agua','ta bonito'],
    'sprites' : <int, String>{
      1: 'squirtle/font.png',
      2: 'squirtle/back.png'
    }
  };
  
  print(pokemon);
}