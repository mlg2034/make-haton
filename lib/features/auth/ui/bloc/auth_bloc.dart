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
  final store = FirebaseFirestore.instance.collection(FirebaseKeys.usersKey);
  AuthBloc(super.initialState, this.signingInUseCase, this.getUserUseCase, this.signOutUseCase) {
    on<AuthEvent>(
      (event, emit) {
        event.map(
          signIn: (signIn) => _handleSigningIn(),
          signOut: (signOut) => _signOut(),
          getUser: (value) => _getUser(),
        );
      },
    );
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
  

  Future<Map <String, dynamic>>  storeData() async{
    return Map.fromIterable((await store.get()).docs.map((e) => e.data()));
  }

  _saveToFirestore(UserEntity user)async{
    final docs = (await store.get()).docs;
    final userFromStore =  docs.where((element) => element.data()['id']==user.id).firstOrNull;
    final ex = (await store.where('id', isEqualTo: user.id).get());
    // ex.
    // if(userFromStore != null){
    //   ;
    // }
  }
}
