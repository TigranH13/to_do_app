import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/core/convertors/authCredential_converter.dart';
import 'package:to_do_app/core/error/exceptions.dart';

import 'package:to_do_app/core/error/failures.dart';
import 'package:to_do_app/features/auth/data/source/qr_sign_in_source.dart';

@Injectable(as: IQrSignInSource)
class QrSignInSourceImpl implements IQrSignInSource {
  final Convertors convertors = Convertors();

  final DatabaseReference databaseReference =
      FirebaseDatabase.instance.ref('authCredentials');

  late Future<Box<Map>> authCredentialStorage;

  QrSignInSourceImpl() {
    authCredentialStorage = _openDb();
  }

  Future<Box<Map>> _openDb() async {
    if (!Hive.isBoxOpen('authCredential')) {
      await Hive.openBox<Map>('authCredential');
    }

    final authBox = Hive.box<Map>('authCredential');

    return authBox;
  }

  @override
  Future<void> saveAuthCredentialInRemoteDataSource(
      {required Map authCredentialMap,
      required String authCredentialId}) async {
    try {
      await databaseReference.child(authCredentialId).set(authCredentialMap);
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<void> signInWithAuthCredential(
      {required Map authCredentialMap}) async {
    try {
      final AuthCredential authCredential =
          convertors.jsonToAuthCredential(authCredentialMap);

      await FirebaseAuth.instance.signInWithCredential(authCredential);
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<void> removeAuthCredentialFromRemoteDataSource(
      {required String authCredentialId}) async {
    try {
      await databaseReference.child(authCredentialId).remove();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Stream<DatabaseEvent> listenForAuthCredentialData({
    required String authCredentialId,
  }) {
    try {
      Stream<DatabaseEvent> authCredentialStream =
          databaseReference.child(authCredentialId).onValue;
      return authCredentialStream;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<void> saveAuthCredentialInLocalDataSource({
    required AuthCredential authCredential,
  }) async {
    try {
      Box<Map> authCredentialBox = await authCredentialStorage;

      await authCredentialBox.put(
        'auth',
        authCredential.asMap(),
      );
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<void> removeAuthCredentialFromLocalDataSource() async {
    try {
      Box<Map> authCredentialBox = await authCredentialStorage;
      await authCredentialBox.clear();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<Either<Failure, AuthCredential>>
      getAuthCredentialFromLocalDataSource() async {
    try {
      Box<Map> authCredentialBox = await authCredentialStorage;

      final Map authCredentialMap = authCredentialBox.values.first;

      final AuthCredential authCredential = convertors.jsonToAuthCredential(
        authCredentialMap,
      );

      return Right(authCredential);
    } catch (e) {
      return Left(
        ServerFailure(),
      );
    }
  }
}
