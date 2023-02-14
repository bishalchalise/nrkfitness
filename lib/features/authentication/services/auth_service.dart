import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';

class AuthService extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  late String _verificationId;
  int? _resendToken;
  String? _phoneNumber;
  bool _isCodeSent = false;

  String get verificationId => _verificationId;
  int? get resendToken => _resendToken;
  bool get isCodeSent => _isCodeSent;
  String? get phoneNumber => _phoneNumber;

  Future<String?> sendVerificationCode(String phoneNumber) async {
    _phoneNumber = phoneNumber;
    try {
      // Start the phone number verification process
      final verificationId = await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        timeout: const Duration(seconds: 60),
        codeAutoRetrievalTimeout: (String verificationId) {
          // Handle the timeout
        },
        verificationCompleted: (PhoneAuthCredential credential) {
          // Automatically sign in the user if verification is complete
          _auth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException exception) {
          // Handle the verification failure
        },
        codeSent: (String verificationId, int? resendToken) {
          _verificationId = verificationId;
          _resendToken = resendToken;
          _isCodeSent = true;
          notifyListeners();
        },
      );
    } catch (e) {
      // Handle any errors
      return null;
    }
  }

  Future<Users?> signInWithVerificationCode(
      String verificationId, String verificationCode) async {
    try {
      final credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: verificationCode,
      );
      final userCredential = await _auth.signInWithCredential(credential);
      final user = userCredential.user;
      if (user != null) {
        return Users(
          uid: user.uid,
          phoneNumber: user.phoneNumber!,
        );
      } else {
        return null;
      }
    } catch (e) {
      // Handle any errors
      return null;
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
