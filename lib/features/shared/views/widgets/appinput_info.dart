import 'package:flutter/material.dart';

class AppInputInfo extends StatelessWidget {
  final String hintText;
   final String? suffixText;
  final Widget? suffixIcon; 
  const AppInputInfo({
    super.key,
    required this.hintText, 
     this.suffixIcon,
     this.suffixText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 231, 229, 229),
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: TextFormField(
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
            ),
            fillColor: const Color(0xffF4F4F4),
            border: InputBorder.none,
            suffixIcon: suffixIcon,
            suffixText: suffixText, 
            ),
      ),
    );
  }
}
