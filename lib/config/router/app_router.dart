import 'package:go_router/go_router.dart';
import 'package:teslo_app/features/auth/auth.dart';
import 'package:teslo_app/features/products/products.dart';

final appRouter = GoRouter(initialLocation: '/login', routes: [
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    path: '/products',
    builder: (context, state) => const ProductsScreen(),
  ),
]);
