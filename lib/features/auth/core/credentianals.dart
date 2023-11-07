import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/core/error/exceptions.dart';

@injectable
class Credentials {
  Future<OAuthCredential> googleCredential() async {
    try {
      GoogleSignInAccount? user = await GoogleSignIn().signIn();

      final googleAuth = await user!.authentication;
      final googlecredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      return googlecredential;
    } catch (e) {
      throw ServerException();
    }
  }
}
