import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const MyButton({super.key, required this.text, 
  required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      onTap: onTap,
      child: Container(
        height: 70,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.redAccent),
        child: Center(child: Text(text)),
      ),
    );
  }
}
