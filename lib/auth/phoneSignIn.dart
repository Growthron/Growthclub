import 'package:firebase_auth/firebase_auth.dart';

/* Future<UserCredential> */
signInWithPhone(String phoneNumber) async {
  var verificationResult = await FirebaseAuth.instance.verifyPhoneNumber(
    phoneNumber: phoneNumber,
    verificationCompleted: (PhoneAuthCredential credential) {},
    verificationFailed: (FirebaseAuthException e) {},
    codeSent: (String verificationId, int? resendToken) {},
    codeAutoRetrievalTimeout: (String verificationId) {},
  );

  var hello = verificationResult;

  // return UserCredential
}
