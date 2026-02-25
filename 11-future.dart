void main() {
  print('Inicio del programa');
  
  httpGet().then((value){
    print(value);
  }).catchError((err){
    print('Error: $err');
  });
  
  print('Fin del programa');
}

Future<String> httpGet() {
  return Future.delayed(const Duration(seconds: 3), () {
    throw 'Error en la peticion http';
    //return 'Respuesta de la petición http';
  });
}