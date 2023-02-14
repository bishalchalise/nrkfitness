import 'package:flutter/widgets.dart';
import 'package:nrkfitness/features/authentication/models/user_model.dart';
import 'package:nrkfitness/features/authentication/services/auth_service.dart';

class AuthVm extends ChangeNotifier {
  final AuthService _authService = AuthService();
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
  TextEditingController get otpController => _optController;

  String? _verificationId;
  String? _phoneNumber;
  Users? _user;
  bool _isLoading = false;

  String? get verificationId => _verificationId;
  String? get phoneNumber => _phoneNumber;
  Users? get user => _user;
  bool get isLoading => _isLoading;

  void validMobileNumber(String value) {
    if (_phoneNumberController.text.length == 14) {
      _phoneNumberController.text = value;
    }
    notifyListeners();
  }

  Future<String?> sendVerificationCode(String phoneNumber) async {
    _verificationId = await _authService.sendVerificationCode(phoneNumber);
    _phoneNumber = phoneNumber;
    notifyListeners();
    return null;
  }

  Future<String?> signInWithVerificationCode(String verificationCode) async {
    _isLoading = true;
    notifyListeners();
    _user = await _authService.signInWithVerificationCode(
        _verificationId!, verificationCode);
    _isLoading = false;
    notifyListeners();
    return null;
  }

  Future<void> signOut() async {
    await _authService.signOut();
    _user = null;
    notifyListeners();
  }

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
}
