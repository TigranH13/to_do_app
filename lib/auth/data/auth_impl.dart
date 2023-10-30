// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import 'package:to_do_app/auth/domain/i_auth_repository.dart';
import 'package:to_do_app/tasks/data/datasources/task_local_data_source_impl.dart';
import 'package:to_do_app/tasks/data/repository/task_impl.dart';

@Injectable(as: IAuthRepository)
class AuthRepositoryImpl implements IAuthRepository {
  final TaskRepositoryImpl taskRepositoryImpl;
  LocalDataSource localDataSource;
  AuthRepositoryImpl({
    required this.localDataSource,
    required this.taskRepositoryImpl,
  });
  final firebaseAuth = FirebaseAuth.instance;
  final currentUser = FirebaseAuth.instance.currentUser;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  @override
  Future signOut() async {
    await taskRepositoryImpl.syncRemoteAndLocalData();
    await localDataSource.clearTaskStorage();

    await firebaseAuth.signOut();
  }

  @override
  Future signInWithEmailAndPassword(String email, String password) async {
    await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);

    await taskRepositoryImpl.syncRemoteAndLocalData();
  }

  @override
  Future createUserWithEmailAndPassword(String email, String password) async {
    UserCredential userCredential = await firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password);

    User? me = userCredential.user;
    await me!.updateDisplayName('Vaxo');
  }

  @override
  Future signInWithGoogle() async {
    GoogleSignInAccount? user = await googleSignIn.signIn();
    if (user == null) {
      return;
    }
    final gAuth = await user.authentication;
    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);
    final us = await FirebaseAuth.instance.signInWithCredential(credential);
    taskRepositoryImpl.syncRemoteAndLocalData();
    if (!us.additionalUserInfo!.isNewUser) {
      await taskRepositoryImpl.syncRemoteAndLocalData();
    }
  }
}
