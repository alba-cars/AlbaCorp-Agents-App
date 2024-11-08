import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_app/app/auth_bloc/auth_bloc.dart';
import 'package:real_estate_app/data/repository/auth_repo.dart';
import 'package:real_estate_app/service_locator/injectable.dart';
import 'package:real_estate_app/util/status.dart';

import '../../../util/result.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authRepo) : super(LoginState());

  final AuthRepo _authRepo;

  Future<void> login({required String email, required String password}) async {
    emit(state.copyWith(loginStatus: AppStatus.loading));
    FlutterSecureStorage().write(key: 'login_email', value: email);
    FlutterSecureStorage().write(key: 'login_password', value: password);
    final result = await _authRepo.login(username: email, password: password);
    switch (result) {
      case (Success s):
        emit(state.copyWith(loginStatus: AppStatus.success));
        getIt<AuthBloc>().add(AuthEvent.userLoggedIn(user: s.value));
        break;
      case (Error e):
        emit(state.copyWith(
            loginStatus: AppStatus.failure, loginErrorMessage: e.exception));
        break;
    }
  }
}
