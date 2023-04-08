import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gyj/src/feature/authentications/domain/entitites/params/register_param.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/user_model.dart';

import '../../../domain/entitites/usecase/register_usecase.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this._useCase) : super(const RegisterState.initial());
  final RegisterUseCase _useCase;
  Future<void> register({
    required String email,
    required String username,
    required String password,
    required String role,
  }) async {
    emit(const RegisterState.loading());
    final response = await _useCase.call(
      RegisterParams(
        email: email,
        username: username,
        password: password,
        role: role,
      ),
    );
    emit(
      response.fold(
        (error) => error.when(
            serverError: (message) => RegisterState.error(message: message),
            noInternet: () => const RegisterState.noInternet()),
        (response) => RegisterState.success(user: response.data),
      ),
    );
  }
}
