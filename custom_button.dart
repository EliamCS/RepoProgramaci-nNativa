import 'package:flutter/material.dart';

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