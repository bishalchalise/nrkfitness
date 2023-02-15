import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../utilities/app_routes.dart';

class AuthVm with ChangeNotifier {


  // final TextEditingController _pin1 = TextEditingController();
  // final TextEditingController _pin2 = TextEditingController();
  // final TextEditingController _pin3 = TextEditingController();
  // final TextEditingController _pin4 = TextEditingController();
  // final TextEditingController _pin5 = TextEditingController();
  // final TextEditingController _pin6 = TextEditingController();
  // final TextEditingController _optController = TextEditingController();


  final TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController get phoneNumberController => _phoneNumberController;

  // TextEditingController get pin1 => _pin1;
  // TextEditingController get pin2 => _pin2;
  // TextEditingController get pin3 => _pin3;
  // TextEditingController get pin4 => _pin4;
  // TextEditingController get pin5 => _pin5;
  // TextEditingController get pin6 => _pin6;
  // TextEditingController get otpController => _optController;

  final auth = FirebaseAuth.instance;

  var authVerificationId;
  var authToken;
  var groupPin;

  // void registerUser({
  //   required String smsCode,
  // }) {
  //   AuthService.registerUser(
  //     phoneNumber: _phoneNumberController.text,
  //   );
  // }

  // String groupOtp() {
  //   _optController.text =
  //       '${pin1.text}, ${pin2.text}, ${pin3.text}, ${pin4.text}, ${pin5.text}, ${pin6.text}';
  //   String otp = _optController.text;
  //   return otp;
  // }

  // void loginUser(String verificationId, String otp) {
  //   AuthService.signIn(verificationId, otp);

  //   print('Login VerificationID is: $verificationId');
  // }
  void sendOtp(context) {
    auth.verifyPhoneNumber(
      verificationCompleted: (credential) {
        auth.signInWithCredential(credential);
      },
      verificationFailed: (_) {},
      codeSent: (String verificatonId, int? token) {
        authVerificationId = verificatonId;
        authToken = token;
        Navigator.pushNamed(context, AppRoutes.otpScreen);
      },
      codeAutoRetrievalTimeout: (_) {},
      phoneNumber: _phoneNumberController.text,
    );
  }

  void verifyCode(context) async {
    final credential = PhoneAuthProvider.credential(
      smsCode: groupPin,
      verificationId: authVerificationId,
    );

    try {
      await auth.signInWithCredential(credential).then((value) async{
         final accessToken = await value.user?.getIdToken();
        print("accessToken: $accessToken");
      });

      Navigator.pushNamed(context, AppRoutes.userInfo);
    } catch (e) {
      debugPrint('error : $e');
    }
  }
}
