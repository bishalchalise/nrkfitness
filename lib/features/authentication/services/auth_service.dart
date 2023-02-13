import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthService {

  static final _auth = FirebaseAuth.instance;

 static final _fs = FirebaseFirestore.instance;
 


  static Future registerUser({
    required final String phoneNumber, 
    required PhoneCodeSent codeSent,
    }) async {
     await _auth.
    verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await _auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          debugPrint('The provided number is not valid'); 
        }
      },
      codeSent: codeSent,
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
   
  }

static Future signIn(String verificationId, String otp) async {
  await _auth
      .signInWithCredential(PhoneAuthProvider.credential(
        verificationId: verificationId,
         smsCode: otp, 
         ), 
  );
}







}
