import 'package:flutter/material.dart';
import 'screens/counter/counter.dart';
void main() {
  runApp(MyApp());
  
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blueGrey,),
      title: 'Counter App',
      home: Counter(),
    );
  }
}





