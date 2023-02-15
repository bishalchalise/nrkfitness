import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  // final String verificationId; 

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    //  required this.verificationId,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(

      color: Theme.of(context).colorScheme.primary,
      padding: const EdgeInsets.all(
        20.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      onPressed: onPressed,
      
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
          color: Color(0xffFFFFFF),
        ),
      ),
    );
  }
}
