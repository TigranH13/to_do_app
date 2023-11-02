import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/features/auto_sign_in_with_qr/core/authCredential_converter.dart';

import 'package:to_do_app/features/auto_sign_in_with_qr/domain/sign_in_with_qr.dart';

@injectable
class AutoSignInWithQrImpl implements IAutoSignInWithQr {
  late Future<Box<Map>> authCredentialStorage;

  AutoSignInWithQrImpl() {
    authCredentialStorage = _openDb();
  }

  Future<Box<Map>> _openDb() async {
    if (!Hive.isBoxOpen('authCredential')) {
      await Hive.openBox<Map>('authCredential');
    }

    final authBox = Hive.box<Map>('authCredential');
    return authBox;
  }

  final DatabaseReference databaseReference =
      FirebaseDatabase.instance.ref('authCredentials');

  @override
  Future<void> saveAuthCredentialInRemoteDataSource(
      {required Map authCredentialMap,
      required String authCredentialId}) async {
    await databaseReference.child(authCredentialId).set(authCredentialMap);
  }

  @override
  Future<void> signInWithAuthCredential(
      {required Map authCredentialMap}) async {
    final AuthCredential authCredential =
        jsonToAuthCredential(authCredentialMap);

    await FirebaseAuth.instance.signInWithCredential(authCredential);
  }

  @override
  Future<void> removeAuthCredentialFromRemoteDataSource(
      {required String authCredentialId}) async {
    await databaseReference.child(authCredentialId).remove();
  }

  @override
  Stream<DatabaseEvent> listenForAuthCredentialData({
    required String authCredentialId,
  }) {
    Stream<DatabaseEvent> authCredentialStream =
        databaseReference.child(authCredentialId).onValue;
    return authCredentialStream;
  }

  @override
  Future<void> saveAuthCredentialInLocalDataSource({
    required AuthCredential authCredential,
  }) async {
    Box<Map> authCredentialBox = await authCredentialStorage;

    await authCredentialBox.put('auth', authCredential.asMap());
  }

  @override
  Future<void> removeAuthCredentialFromLocalDataSource() async {
    Box<Map> authCredentialBox = await authCredentialStorage;
    await authCredentialBox.clear();
  }

  @override
  Future<AuthCredential> getAuthCredentialFromLocalDataSource() async {
    Box<Map> authCredentialBox = await authCredentialStorage;
    final Map authCredentialMap = authCredentialBox.values.first;
    final AuthCredential authCredential =
        jsonToAuthCredential(authCredentialMap);
    return authCredential;
  }
}
