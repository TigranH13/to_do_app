// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:injectable/injectable.dart';
import 'package:to_do_app/features/auth/domain/i_auth_repository.dart';
import 'package:to_do_app/features/auto_sign_in_with_qr/data/sign_in_with_qr_impl.dart';
import 'package:to_do_app/features/tasks/data/datasources/task_local_data_source_impl.dart';
import 'package:to_do_app/features/tasks/data/repository/task_impl.dart';

@Injectable(as: IAuthRepository)
class AuthRepositoryImpl implements IAuthRepository {
  final AutoSignInWithQrImpl autoSignInWithQrImpl;
  final TaskRepositoryImpl taskRepositoryImpl;
  final TaskLocalDataSourceImpl localDataSource;

  AuthRepositoryImpl({
    required this.autoSignInWithQrImpl,
    required this.localDataSource,
    required this.taskRepositoryImpl,
  });

  final firebaseAuth = FirebaseAuth.instance;
  final currentUser = FirebaseAuth.instance.currentUser;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  @override
  Future<void> signOut() async {
    await taskRepositoryImpl.syncRemoteAndLocalData();
    await localDataSource.clearTaskStorage();
    await autoSignInWithQrImpl.removeAuthCredentialFromLocalDataSource();

    await firebaseAuth.signOut();
  }

  @override
  Future signInWithEmailAndPassword(String email, String password) async {
    await firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    await taskRepositoryImpl.syncRemoteAndLocalData();
    final AuthCredential emailCrenditional =
        EmailAuthProvider.credential(email: email, password: password);

    await autoSignInWithQrImpl.saveAuthCredentialInLocalDataSource(
      authCredential: emailCrenditional,
    );
  }

  @override
  Future createUserWithEmailAndPassword(String email, String password) async {
    final AuthCredential emailCrenditional =
        EmailAuthProvider.credential(email: email, password: password);
    UserCredential userCredential =
        await firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    User? user = userCredential.user;
    await user!.updateDisplayName('Vaxo');
    autoSignInWithQrImpl.saveAuthCredentialInLocalDataSource(
        authCredential: emailCrenditional);
  }

//
  @override
  Future signInWithGoogle() async {
    GoogleSignInAccount? user = await googleSignIn.signIn();
    if (user == null) {
      return;
    }

    final gAuth = await user.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );
    final us = await FirebaseAuth.instance.signInWithCredential(credential);
    taskRepositoryImpl.syncRemoteAndLocalData();
    if (!us.additionalUserInfo!.isNewUser) {
      await taskRepositoryImpl.syncRemoteAndLocalData();
    }

    autoSignInWithQrImpl.saveAuthCredentialInLocalDataSource(
        authCredential: credential);
  }

  @override
  Future signInWithToken({required String token}) async {
    await FirebaseAuth.instance.signInWithCustomToken(token);
  }
}
