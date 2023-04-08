import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/user_model.dart';
import '../../../domain/entitites/params/login_param.dart';
import '../../../domain/entitites/usecase/login_usecase.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._useCase) : super(const LoginState.initial());

  final LoginUseCase _useCase;

  Future<void> login({
    required String username,
    required String password,
  }) async {
    emit(const LoginState.loading());
    final response = await _useCase.call(
      LoginParam(username: username, password: password),
    );
    emit(
      response.fold(
        (error) => error.when(
            serverError: (message) => LoginState.error(message: message),
            noInternet: () => const LoginState.noInternet()),
        (response) =>
            LoginState.success(message: response.message, user: response.data),
      ),
    );
  }
}
