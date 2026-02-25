
void main() {
  final String pokemon = 'Squirtle';
  final int hp = 100;
  bool? isAlive;
  final List<String> abilities = ['echa agua'];
  final sprites = <String>['squirtle/font.png', 'squirtle/back.png '];
  
  dynamic errorMessage = 'Hola';
  errorMessage = [true];
  errorMessage = [1,2,3,4];
  errorMessage = [null];
  
  print("""
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites
    $errorMessage
  """);
}