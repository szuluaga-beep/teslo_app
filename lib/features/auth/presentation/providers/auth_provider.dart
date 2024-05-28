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

  Future<void> loginUser(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 500));
    try {
      final user = await authRepository.login(email, password);
      _setLoggedUser(user);
    } on CustomError catch (e){
      logout(e.message);    
    } catch (e) {
      logout('Error no controlado');
    }
  }

  void registerUser(String email, String password) async {}
  void checkAuthStatus() async {}

  void _setLoggedUser(User user) {
    //TODO: necesito guardar el token físicamente

    state = state.copyWith(
      user: user,
      authStatus: AuthStatus.authenticated,
    );
  }

  Future<void> logout(String? errorMessage) async {
    //TODO: limpiar token

    state = state.copyWith(
      authStatus: AuthStatus.notAuthenticated,
      user: null,
      errorMesage: errorMessage,
    );
  }
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
          authStatus: authStatus ?? this.authStatus,
          user: user ?? this.user,
          errorMesage: errorMesage ?? this.errorMesage);
}
