import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:to_do_app/features/auth/data/source/qr_sign_in_source.dart';
import 'package:to_do_app/features/auth/domain/i_auth_repository.dart';

import '../../../../core/error/failures.dart';

part 'qr_sign_in_bloc.freezed.dart';
part 'qr_sign_in_event.dart';
part 'qr_sign_in_state.dart';

@injectable
class QrSignInBloc extends Bloc<QrSignInEvent, QrSignInState> {
  final IQrSignInSource autoSignInWithQrImpl;
  final IAuthRepository authRepository;
  QrSignInBloc(
      {required this.autoSignInWithQrImpl, required this.authRepository})
      : super(
          const _Initial(),
        ) {
    on<ListenForAuthCredentialData>(_listenForAuthCredentialData);

    on<SaveAuthCredentialInFirebase>(_saveAuthCredentialInFirebase);

    on<EmitQrSignedState>((event, emit) {
      emit(
        const QrSignInState.isSignedWithQr(),
      );
    });
  }

  Future<void> _listenForAuthCredentialData(
    ListenForAuthCredentialData event,
    Emitter<QrSignInState> emit,
  ) async {
    try {
      final Stream<DatabaseEvent> authCredentialDataStream =
          autoSignInWithQrImpl.listenForAuthCredentialData(
        authCredentialId: event.authCredentialId,
      );

      final StreamSubscription authCredentialDataStreamSubscription =
          authCredentialDataStream.listen(
        (ev) async {
          if (ev.snapshot.value != null) {
            await autoSignInWithQrImpl.signInWithAuthCredential(
              authCredentialMap: ev.snapshot.value as Map,
            );

            await autoSignInWithQrImpl.removeAuthCredentialFromRemoteDataSource(
              authCredentialId: event.authCredentialId,
            );
            add(
              const QrSignInEvent.emitQrSignedState(),
            );
          }
        },
      );
      on<EmitQrSignedState>(
        (event, emit) => authCredentialDataStreamSubscription.cancel(),
      );
    } on Exception {
      emit(
        const QrSignInState.failed(),
      );

      autoSignInWithQrImpl.removeAuthCredentialFromRemoteDataSource(
        authCredentialId: event.authCredentialId,
      );
    }
  }

  void _saveAuthCredentialInFirebase(
    SaveAuthCredentialInFirebase event,
    Emitter<QrSignInState> emit,
  ) async {
    final Either<Failure, AuthCredential> getAuthCredentialFromLocalDataSource =
        await autoSignInWithQrImpl.getAuthCredentialFromLocalDataSource();

    getAuthCredentialFromLocalDataSource.fold(
      (l) => emit(
        const QrSignInState.failed(),
      ),
      (r) async {
        await autoSignInWithQrImpl.saveAuthCredentialInRemoteDataSource(
          authCredentialMap: r.asMap(),
          authCredentialId: event.authCredentialId,
        );
      },
    );
  }
}
