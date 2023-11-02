import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/features/auth/application/auth_bloc.dart';

import 'package:to_do_app/features/auto_sign_in_with_qr/data/sign_in_with_qr_impl.dart';

part 'auto_sign_in_bloc.freezed.dart';
part 'auto_sign_in_event.dart';
part 'auto_sign_in_state.dart';

@injectable
class AutoSignInBloc extends Bloc<AutoSignInEvent, AutoSignInState> {
  final AutoSignInWithQrImpl autoSignInWithQrImpl;
  AutoSignInBloc({required this.autoSignInWithQrImpl})
      : super(const _Initial()) {
    on<ListenForAuthCredentialData>(_listenForAuthCredentialData);

    on<SaveAuthCredentialInFirebase>(_saveAuthCredentialInFirebase);

    on<SignInWithAuthCredential>(_signInWithAuthCredential);
  }

  void _listenForAuthCredentialData(
    ListenForAuthCredentialData event,
    Emitter<AutoSignInState> emit,
  ) async {
    print('pyy');
    autoSignInWithQrImpl
        .listenForAuthCredentialData(authCredentialId: event.authCredentialId)
        .listen((event) {
      if (event.snapshot.value != null) {
        print(event.snapshot.value as Map);
        autoSignInWithQrImpl.signInWithAuthCredential(
            authCredentialMap: event.snapshot.value as Map);
        print(FirebaseAuth.instance.currentUser!.email);
      }
    });
  }

  void _saveAuthCredentialInFirebase(
    SaveAuthCredentialInFirebase event,
    Emitter<AutoSignInState> emit,
  ) async {
    final AuthCredential authCredential =
        await autoSignInWithQrImpl.getAuthCredentialFromLocalDataSource();
    await autoSignInWithQrImpl.saveAuthCredentialInRemoteDataSource(
        authCredentialMap: authCredential.asMap(),
        authCredentialId: event.authCredentialId);
  }

  void _signInWithAuthCredential(
    SignInWithAuthCredential event,
    Emitter<AutoSignInState> emit,
  ) async {
    print('che de');
    final AuthCredential authCredential =
        await autoSignInWithQrImpl.getAuthCredentialFromLocalDataSource();
    await autoSignInWithQrImpl.signInWithAuthCredential(
      authCredentialMap: authCredential.asMap(),
    );
    print(FirebaseAuth.instance.currentUser!.email);
    print('hmm');
  }
}
