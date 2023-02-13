import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:nrkfitness/features/authentication/services/auth_service.dart';

class AuthVm extends ChangeNotifier {
  final TextEditingController _phoneNumberController = TextEditingController();

  final TextEditingController _pin1 = TextEditingController();
  final TextEditingController _pin2 = TextEditingController();
  final TextEditingController _pin3 = TextEditingController();
  final TextEditingController _pin4 = TextEditingController();
  final TextEditingController _pin5 = TextEditingController();
  final TextEditingController _pin6 = TextEditingController();

  final TextEditingController _optController = TextEditingController();

  TextEditingController get phoneNumberController => _phoneNumberController;

  TextEditingController get pin1 => _pin1;
  TextEditingController get pin2 => _pin2;
  TextEditingController get pin3 => _pin3;
  TextEditingController get pin4 => _pin4;
  TextEditingController get pin5 => _pin5;
  TextEditingController get pin6 => _pin6;

  void validMobileNumber(String value) {
    if (_phoneNumberController.text.length == 14) {
      _phoneNumberController.text = value;
    }
    notifyListeners();
  }

  void registerUser({required PhoneCodeSent codeSent}) {
    AuthService.registerUser(
      phoneNumber: _phoneNumberController.text,
      codeSent: codeSent,
    );
  }

  String groupOtp() {
    _optController.text =
        '${pin1.text}, ${pin2.text}, ${pin3.text}, ${pin4.text}, ${pin5.text}, ${pin6.text}';
    String otp = _optController.text;
    return otp;
  }

  void loginUser(String verificationId, String otp) {
    AuthService.signIn(verificationId, otp);
  }
}
