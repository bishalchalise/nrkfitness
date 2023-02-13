import 'package:flutter/material.dart';

class TextBuilder extends StatelessWidget {
  final String text;
  final Color color;
  const TextBuilder({

  super.key, required this.text, 
  required TextStyle style,
  required this.color,

   });

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: color),);
  }
}
