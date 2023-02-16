import 'package:firebase_auth/firebase_auth.dart';
import 'package:nrkfitness/features/authentication/models/user_model.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String? _verificationId;
  String? get verificationId => _verificationId;

  Future<void> sendVerificationCode(String phoneNumber) async {
    try {
      // Start the phone number verification process
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        timeout: const Duration(seconds: 120),
        codeAutoRetrievalTimeout: (String verificationId) {
          _verificationId = verificationId;
        },
        verificationCompleted: (PhoneAuthCredential credential) {
          // Automatically sign in the user if verification is complete
          _auth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException exception) {
          // Handle the verification failure
        },
        codeSent: (String verificationId, int? resendToken) {
          // Handle the code sent
          _verificationId = verificationId;
        },
      );
    } catch (e) {
      // Handle any errors
      print('Error in verifyPhone: $e');
    }
  }

  Future<String?> signInWithVerificationCode(
      {required String verificationId,
      required String verificationCode}) async {
    try {
      final credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: verificationCode,
      );
      await _auth.signInWithCredential(credential);
    } catch (e) {
      // Handle any errors
      print('Error SignIn: $e');
    }
    return null;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
