import 'package:teslo_app/features/shared/shared.dart';

class LoginFormState {
  final bool isPosting;
  final bool isFormPosted;
  final bool isValid;
  final Email email;
  final Password password;

  LoginFormState({
    this.isFormPosted = false,
    this.isPosting = false,
    this.isValid = false,
    this.email = const Email.pure(),
    this.password = const Password.pure(),
  });
}
