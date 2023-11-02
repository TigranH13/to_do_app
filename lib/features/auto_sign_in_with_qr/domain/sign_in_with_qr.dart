import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

abstract class IAutoSignInWithQr {
  Future<void> saveAuthCredentialInLocalDataSource({
    required AuthCredential authCredential,
  });

  Future<void> saveAuthCredentialInRemoteDataSource(
      {required Map authCredentialMap, required String authCredentialId});

  Stream<DatabaseEvent> listenForAuthCredentialData(
      {required String authCredentialId});

  Future<void> signInWithAuthCredential({required Map authCredentialMap});

  Future<void> removeAuthCredentialFromRemoteDataSource(
      {required String authCredentialId});

  Future<void> removeAuthCredentialFromLocalDataSource();

  Future<AuthCredential> getAuthCredentialFromLocalDataSource();
}
