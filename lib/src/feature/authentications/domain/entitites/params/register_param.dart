import 'package:equatable/equatable.dart';

class RegisterParams extends Equatable {
  const RegisterParams({
    required this.email,
    required this.username,
    required this.password,
    required this.role,
  });

  final String email;
  final String username;
  final String password;
  final String role;

  @override
  List<Object?> get props => [email, username, password, role];
}
