import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:teslo_app/features/auth/domain/domain.dart';
import 'package:teslo_app/features/auth/infrastructure/infrastructure.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final authRepository = AuthRepositoryImpl();

  return AuthNotifier(authRepository: authRepository);
});

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository authRepository;

  AuthNotifier({required this.authRepository}) : super(AuthState());

  void loginUser(String email, String password) async {
    
  }
  void registerUser(String email, String password) async {}
  void checkStatus() async {}
}

enum AuthStatus { checking, authenticated, notAuthenticated }

class AuthState {
  final AuthStatus authStatus;
  final User? user;
  final String errorMesage;

  AuthState(
      {this.authStatus = AuthStatus.checking,
      this.user,
      this.errorMesage = ''});

  AuthState copyWith({
    AuthStatus? authStatus,
    User? user,
    String? errorMesage,
    }) =>
      AuthState(
          authStatus: authStatus?? this.authStatus,
          user: user ?? this.user,
          errorMesage: errorMesage?? this.errorMesage);
}
