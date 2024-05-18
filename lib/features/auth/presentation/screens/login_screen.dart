import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:teslo_app/features/shared/shared.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scaffoldBackgroundColor = Theme.of(context).scaffoldBackgroundColor;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        // appBar: AppBar(title: const Text('Login')),
        body: GeometricalBackground(
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Icon(
                  Icons.production_quantity_limits,
                  color: Colors.white,
                  size: 100,
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  width: double.infinity,
                  // 160 de los sizedbox y 100 del icono
                  height: size.height - 260,
                  decoration: BoxDecoration(
                      color: scaffoldBackgroundColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(100))),
                  child: const _LoginForm(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm();

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          'Login',
          style: textStyle.titleLarge,
        ),
        const SizedBox(
          height: 90,
        ),
        const CustomTextForm(
          hintText: 'Correo electrónico',
          keyBoardType: TextInputType.emailAddress,
        ),
        const SizedBox(
          height: 20,
        ),
        const CustomTextForm(
          obscureText: true,
          hintText: 'Contraseña',
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
              width: double.infinity,
              height: 60,
              child: CustomFilledButton(
                text: 'Ingresar',
                color: Colors.black,
                onPressed: () {},
              )),
        ),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('No tienes cuenta'),
            TextButton(onPressed: () => context.push('/register'), child: const Text('Crea una aquí'))
          ],
        )
      ],
    );
  }
}
