void main() async{
  print ('inicio del programa');
 
  
  try{
  final value = await httpGet('http://api.eliam.dev');
  print(value); 
  }catch(err){
   print('Error: $err');
     
  }
  
  print ('Final del programa');

}

Future<String> httpGet(String url) async{
  await Future.delayed(const Duration(seconds: 2));
    
    throw 'Error en la peticion'  ;           
  //return 'Tenemosn un valor!!!';
}