import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:teslo_app/config/config.dart';

void main() async {
  await Environment.initEnvironment();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print(Environment.apiUrl);
    return MaterialApp.router(
      title: 'Material App',
      theme: AppTheme().getTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
  }
}
