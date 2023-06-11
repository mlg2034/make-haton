import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:make_haton/features/auth/domain/entities/user_entity.dart';
import 'package:make_haton/features/auth/domain/use_cases/get_current_user_usecase.dart';
import 'package:make_haton/features/auth/domain/use_cases/sign_in_usecase.dart';
import 'package:make_haton/features/auth/domain/use_cases/sign_out_usecase.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SigningInUseCase signingInUseCase;
  final GetUserUseCase getUserUseCase;
  final SignOutUseCase signOutUseCase;


  AuthBloc(super.initialState, this.signingInUseCase, this.getUserUseCase, this.signOutUseCase) {
    on<AuthEvent>(
      (event, emit) {
        event.map(
          signIn: (signIn) => _handleSigningIn(),
          signOut: (signOut) => _signOut(),
        );
      },
    );
  }

  Future<void> _signOut() async {
    emit(AuthState.loading(state.userEntity));
    final nullUser = await signOutUseCase.execute();
    emit(AuthState.unauthorized(nullUser));
  }

  Future<void> _handleSigningIn() async {
    emit(const AuthState.loading(null));
    try {
      final user = await signingInUseCase.execute();
      if (user == null) {
        emit(const AuthState.unauthorized(null));

        return;
      }
      emit(AuthState.authorized(user));
    } catch (err) {
      emit(const AuthState.error(null));
    }
  }
}
