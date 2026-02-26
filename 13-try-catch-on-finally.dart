void main() async{
  print ('inicio del programa');
 
  
  try{
  final value = await httpGet('http://api.eliam.dev');
  print(value); 
  }on Exception catch(err){
   print('Tenemos una exception: $err');
  } catch(err){ 
     print('CAGASTE!! Algo le paso a esta vaina: $err');
  }  finally {
    print('Fin del try-catch');
  }
  
  print ('Final del programa');
}

Future<String> httpGet(String url) async{
  await Future.delayed(const Duration(seconds: 2));
    
    throw Exception('No hay parametros en la URL');
  //  throw 'Error en la peticion'  ;           
  return 'Tenemosn un valor!!!';
}