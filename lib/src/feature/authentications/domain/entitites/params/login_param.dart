import 'package:equatable/equatable.dart';

class LoginParam extends Equatable {
  const LoginParam({
    required this.username,
    required this.password,
  });

  final String username;
  final String password;

  @override
  List<Object> get props => [username, password];
}
