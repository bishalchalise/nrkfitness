// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:nrkfitness/utilities/app_routes.dart';

// import '../models/user_model.dart';

// class AuthService extends ChangeNotifier {
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   Future<String?> sendVerificationCode({
//     required PhoneCodeSent codeSent,
//     required final String phoneNumber,
//   }) async {
//     try {
//       // Start the phone number verification process
//       await _auth.verifyPhoneNumber(
//         phoneNumber: phoneNumber,
//         timeout: const Duration(seconds: 120),
//         codeAutoRetrievalTimeout: (String verificationId) {
//           // Handle the timeout
//         },
//         verificationCompleted: (PhoneAuthCredential credential) {
//           // Automatically sign in the user if verification is complete
//           _auth.signInWithCredential(credential);
//         },
//         verificationFailed: (FirebaseAuthException exception) {
//           // Handle the verification failure
//         },
//         codeSent: codeSent,
//       );
//     } catch (e) {
//       return null;
//     }
//   }

//   Future<Users?> signInWithVerificationCode(
//       String verificationId, String verificationCode) async {
//     try {
//       final credential = PhoneAuthProvider.credential(
//         verificationId: verificationId,
//         smsCode: verificationCode,
//       );
//       UserCredential userCredential =
//           await _auth.signInWithCredential(credential);

//       print('called');
//       User? user = userCredential.user;

//       if (user != null) {
//         return Users(
//           uid: user.uid,
//           phoneNumber: user.phoneNumber!,
//         );
//       } else {
//         return null;
//       }
//     } catch (e) {
//       // Handle any errors
//       return null;
//     }
//   }

//   Future<void> signOut() async {
//     await _auth.signOut();
//   }
// }
