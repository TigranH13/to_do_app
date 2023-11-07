import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:injectable/injectable.dart';
import 'package:to_do_app/core/error/exceptions.dart';
import 'package:to_do_app/core/error/failures.dart';

import 'package:to_do_app/features/auth/domain/i_auth_repository.dart';

@Injectable(as: IAuthRepository)
class AuthRepositoryImpl implements IAuthRepository {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final User? currentUser = FirebaseAuth.instance.currentUser;

  @override
  Future<void> signOut() async {
    try {
      await signOut();
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<Either<Failure, AuthCredential>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final AuthCredential emailCrenditional = EmailAuthProvider.credential(
        email: email,
        password: password,
      );
      return Right(
        emailCrenditional,
      );
    } catch (e) {
      return Left(
        ServerFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, AuthCredential>> createUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final AuthCredential emailCrenditional = EmailAuthProvider.credential(
        email: email,
        password: password,
      );

      return Right(
        emailCrenditional,
      );
    } catch (e) {
      return Left(
        ServerFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, AuthCredential>> signInWithCredential(
      {required AuthCredential credential}) async {
    try {
      await firebaseAuth.signInWithCredential(
        credential,
      );

      return Right(
        credential,
      );
    } catch (e) {
      return Left(
        ServerFailure(),
      );
    }
  }

  @override
  Future<bool> isSigned() async {
    return currentUser != null;
  }

  @override
  Future<void> signInWithQr({
    required AuthCredential credential,
  }) async {
    await firebaseAuth.signInWithCredential(
      credential,
    );
  }
}
