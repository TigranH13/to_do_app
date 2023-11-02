import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/features/auth/domain/i_auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;
  AuthBloc({required this.authRepository}) : super(const _Loading()) {
    on<CreateUserWithEmailAndPassword>(_createUserWithEmailAndPassword);

    on<SignInWithEmailAndPassword>(_signInWithEmailAndPassword);

    on<SignInWithGoogle>(_signInWithGoogle);

    on<InitAuth>(_init);

    on<SignOut>(_signOut);
  }

  Future _init(
    InitAuth event,
    Emitter<AuthState> emit,
  ) async {
    User? user = FirebaseAuth.instance.currentUser;
    print('eee');

    if (user == null) {
      print('s');
      emit(const AuthState.isNotSigned());
    } else {
      print('ss');
      emit(const AuthState.isSigned());
    }
  }

  void _createUserWithEmailAndPassword(
    CreateUserWithEmailAndPassword event,
    Emitter<AuthState> emit,
  ) async {
    emit(
      const AuthState.loading(),
    );

    await authRepository.createUserWithEmailAndPassword(
        event.email, event.password);

    emit(
      const AuthState.isSigned(),
    );
  }

  Future _signOut(
    SignOut event,
    Emitter<AuthState> emit,
  ) async {
    emit(
      const AuthState.loading(),
    );

    await authRepository.signOut();
    emit(const AuthState.isNotSigned());
  }

  void _signInWithEmailAndPassword(
      SignInWithEmailAndPassword event, Emitter<AuthState> emit) async {
    emit(
      const AuthState.loading(),
    );

    await authRepository.signInWithEmailAndPassword(
        event.email, event.password);
    emit(const AuthState.isSigned());
  }

  void _signInWithGoogle(
      SignInWithGoogle event, Emitter<AuthState> emit) async {
    emit(
      const AuthState.loading(),
    );

    await authRepository.signInWithGoogle();
    emit(const AuthState.isSigned());
  }
}
