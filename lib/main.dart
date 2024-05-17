import 'package:flutter/material.dart';
import 'package:teslo_app/config/router/app_router.dart';
import 'package:teslo_app/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Material App',
      theme: AppTheme().getTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
  }
}
