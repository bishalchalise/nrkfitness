import 'package:flutter/material.dart';
import 'package:nrkfitness/features/authentication/views/screens/register_screen.dart';

 

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const splashScreen = 'splashScreen';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const RegisterScreen()),
        );
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: _imageBuilder()),
          
            _captionBuilder(context),
          ],
        ),
      ),
    );
  }
}

Widget _imageBuilder() {
  return Image.asset('assets/images/png/image 1.png');
}

Widget _captionBuilder(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      RichText(
        text: const TextSpan(
          text: 'A Initiative by ',
          style: TextStyle(color: Color(0xffA8A8A8)),
          children: <TextSpan>[
            TextSpan(
                text: 'fitpal',
                style: TextStyle(
                    fontWeight: FontWeight.w400, color: Color(0xffFF6363))),
          ],
        ),
      )
    ],
  );
}
