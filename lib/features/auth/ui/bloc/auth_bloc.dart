import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:make_haton/features/auth/domain/entities/user_entity.dart';
import 'package:make_haton/features/auth/domain/use_cases/get_current_user_usecase.dart';
import 'package:make_haton/features/auth/domain/use_cases/sign_in_usecase.dart';
import 'package:make_haton/features/auth/domain/use_cases/sign_out_usecase.dart';
import 'package:make_haton/shared/app_strings.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SigningInUseCase signingInUseCase;
  final GetUserUseCase getUserUseCase;
  final SignOutUseCase signOutUseCase;

  AuthBloc(super.initialState, this.signingInUseCase, this.getUserUseCase,
      this.signOutUseCase) {
    on<AuthEvent>(
      (event, emit) {
        event.map(
          signIn: (signIn) => _handleSigningIn(),
          signInEmail: (signInEmail) => signInWithEmail(signInEmail!.email),
          signOut: (signOut) => _signOut(),
          getUser: (value) => _getUser(),
        );
      },
    );
  }
  Future<bool> checkUserExists(String email) async {
    final QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
        .instance
        .collection('users')
        .where('email', isEqualTo: email)
        .get();
    return snapshot.docs.isNotEmpty;
  }

  Future<void> signInWithEmail(String email) async {
    final userExists = await checkUserExists(email);
    if (userExists) {
      // Пользователь уже существует, выполните необходимые действия.
      // Например, вы можете обновить состояние или перенаправить пользователя.
      final user = UserEntity(name: email, id: '1');
      emit(AuthState.authorized(user));
    } else {
      // Пользователь не существует, выполните необходимые действия, например, добавьте пользователя в коллекцию.
      final fb = FirebaseFirestore.instance.collection('users');
      final user = UserEntity(name: email, id: '1');
      final uMap = user.toJson();
      fb.add(uMap);

      emit(AuthState.authorized(user));
    }
  }

  Future<void>? _getUser() async {
    emit(AuthState.loading(state.userEntity));
    final user = await getUserUseCase.execute();
    if (user != null) {
      emit(AuthState.authorized(user));
    }
    emit(AuthState.unauthorized(UserEntity.empty()));
  }

  Future<void> _signOut() async {
    emit(AuthState.loading(state.userEntity));
    await signOutUseCase.execute();
    emit(AuthState.unauthorized(UserEntity.empty()));
  }

  Future<void> _handleSigningIn() async {
    emit(AuthState.loading(UserEntity.empty()));
    try {
      final user = await signingInUseCase.execute();
      if (user == null) {
        emit(AuthState.unauthorized(UserEntity.empty()));

        return;
      }
      emit(AuthState.authorized(user));
    } catch (err) {
      emit(AuthState.error(UserEntity.empty()));
    }
  }
}
