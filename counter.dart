import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _MyAppState();
}

class _MyAppState extends State<Counter> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
        centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter', style: TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100),
                ),
              Text(
                clickCounter == 1 ? 'Click' : 'Clicks',
                style: TextStyle(fontSize: 25
                ),
              ),
            ],
            )
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomButtom(
                
                onPressed: (){
                  setState((){
                    clickCounter++;
                  });
                },
                icon:Icons.plus_one
              ),
              const SizedBox(height: 10),
              CustomButtom(
                onPressed: (){                
                  setState((){
                    clickCounter = 0;
                  });
                },
                icon:Icons.restart_alt
              ),
              const SizedBox(height: 10),
              CustomButtom(
                onPressed: (){
                  if(clickCounter <= 0) return;
                  setState((){
                    clickCounter--;
                  });
                },
                icon:Icons.exposure_minus_1
              ),
              const SizedBox(height: 10),
            ],)
      );
  }
}

class CustomButtom extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButtom({super.key, required this.icon, this.onPressed});

@override
Widget build(BuildContext context) {
  return FloatingActionButton(
    shape: CircleBorder(),
    backgroundColor: const Color.fromARGB(255, 151, 113, 245),
    elevation: 10,
    onPressed: onPressed,
    child: Icon(icon),
  );
}
}