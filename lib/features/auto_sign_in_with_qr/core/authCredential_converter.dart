import 'package:firebase_auth/firebase_auth.dart';

AuthCredential jsonToAuthCredential(Map<dynamic, dynamic> authCredentialMap) {
  late final AuthCredential authCredential;

  if (authCredentialMap['providerId'] == 'password') {
    authCredential = EmailAuthProvider.credential(
      email: authCredentialMap['email'],
      password: authCredentialMap['secret'],
    );
  } else if (authCredentialMap['providerId'] == 'google.com') {
    authCredential = GoogleAuthProvider.credential(
      idToken: authCredentialMap['idToken'],
      accessToken: authCredentialMap['accessToken'],
    );
  }

  return authCredential;
}
