import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:to_do_app/core/error/failures.dart';

abstract class IAuthRepository {
  Future<Either<Failure, AuthCredential>> createUserWithEmailAndPassword(
    String email,
    String password,
  );

  Future<Either<Failure, AuthCredential>> signInWithCredential({
    required AuthCredential credential,
  });

  Future<Either<Failure, AuthCredential>> signInWithEmailAndPassword(
    String email,
    String password,
  );

  Future<void> signOut();

  Future<void> signInWithQr({
    required AuthCredential credential,
  });

  Future<bool> isSigned();
}
