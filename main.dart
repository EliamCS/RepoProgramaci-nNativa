import 'package:flutter/material.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('Counter Screen'),
      centerTitle: true,),
      body: Center(child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text('$clickCounter', style: TextStyle(
          fontSize: 170,
          fontWeight: FontWeight.w100),
          ), 
        Text('Clicks', style: TextStyle(fontSize: 25)),
        ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter++;
          });
        },
        child: Icon(Icons.plus_one),
      ),
    )
  );
  } 
}