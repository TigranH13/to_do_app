import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:to_do_app/core/notifications/notify_service.dart';
import 'package:to_do_app/features/auth/core/credentianals.dart';
import 'package:to_do_app/features/auth/data/source/qr_sign_in_source.dart';

import 'package:to_do_app/features/auth/domain/i_auth_repository.dart';

import 'package:to_do_app/features/tasks/domain/i_tasks_repository.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final ITasksRepository tasksRepository;
  final Credentials credentials;
  final NotificationService notificationService;
  final IAuthRepository authRepository;
  final IQrSignInSource qrSignInSourceImpl;
  AuthBloc(
      {required this.qrSignInSourceImpl,
      required this.notificationService,
      required this.tasksRepository,
      required this.authRepository,
      required this.credentials})
      : super(
          const _Loading(),
        ) {
    on<CreateUserWithEmailAndPassword>(_createUserWithEmailAndPassword);

    on<SignInWithEmailAndPassword>(_signInWithEmailAndPassword);

    on<SignInWithCredential>(_signInWithCredential);

    on<InitAuth>(_init);

    on<SignOut>(_signOut);
  }

  Future _init(
    InitAuth event,
    Emitter<AuthState> emit,
  ) async {
    if (await authRepository.isSigned()) {
      emit(
        const AuthState.isSigned(),
      );
    } else {
      emit(
        const AuthState.isNotSigned(),
      );
    }
  }

  void _createUserWithEmailAndPassword(
    CreateUserWithEmailAndPassword event,
    Emitter<AuthState> emit,
  ) async {
    emit(
      const AuthState.loading(),
    );
    try {
      final Either<Failure, AuthCredential> createUserWithEmailAndPassword =
          await authRepository.createUserWithEmailAndPassword(
              event.email, event.password);
      createUserWithEmailAndPassword.fold(
        (l) => emit(
          const AuthState.failed(),
        ),
        (r) async {
          await qrSignInSourceImpl.saveAuthCredentialInLocalDataSource(
              authCredential: r);
          emit(
            const AuthState.isSigned(),
          );
        },
      );
    } on ServerException {
      emit(
        const AuthState.failed(),
      );
    }
  }

  Future _signOut(
    SignOut event,
    Emitter<AuthState> emit,
  ) async {
    emit(
      const AuthState.loading(),
    );
    try {
      await authRepository.signOut();

      await qrSignInSourceImpl.removeAuthCredentialFromLocalDataSource();

      notificationService.clearNotifications();

      tasksRepository.syncRemoteAndLocalData();

      tasksRepository.clearTaskLocalStorage();

      emit(
        const AuthState.isNotSigned(),
      );
    } on ServerException {
      emit(
        const AuthState.failed(),
      );
    }
  }

  void _signInWithEmailAndPassword(
      SignInWithEmailAndPassword event, Emitter<AuthState> emit) async {
    emit(
      const AuthState.loading(),
    );
    try {
      final Either<Failure, AuthCredential> signInWithEmailAndPassword =
          await authRepository.signInWithEmailAndPassword(
              event.email, event.password);

      signInWithEmailAndPassword.fold((l) => emit(const AuthState.failed()),
          (r) async {
        await qrSignInSourceImpl.saveAuthCredentialInLocalDataSource(
            authCredential: r);
        emit(
          const AuthState.isSigned(),
        );
      });
    } on Exception {
      emit(
        const AuthState.failed(),
      );
    }
  }

  void _signInWithCredential(
      SignInWithCredential event, Emitter<AuthState> emit) async {
    emit(
      const AuthState.loading(),
    );
    try {
      final AuthCredential credential = await credentials.googleCredential();

      await authRepository.signInWithCredential(credential: credential);
    } on Exception {
      emit(
        const AuthState.failed(),
      );
    }

    emit(
      const AuthState.isSigned(),
    );
  }
}
