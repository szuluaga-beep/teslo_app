import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:teslo_app/features/shared/shared.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldBackgroundColor = Theme.of(context).scaffoldBackgroundColor;
    final size = MediaQuery.of(context).size;
    final textStyle = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: GeometricalBackground(
          child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 80),
                  // Icon Banner
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            if (!context.canPop()) return;
                            context.pop();
                          },
                          icon: const Icon(Icons.arrow_back_rounded,
                              size: 40, color: Colors.white)),
                      const Spacer(flex: 1),
                      Text('Crear cuenta',
                          style: textStyle.titleLarge
                              ?.copyWith(color: Colors.white)),
                      const Spacer(flex: 2),
                    ],
                  ),

                  const SizedBox(height: 50),

                  Container(
                    height:
                        size.height - 260, // 80 los dos sizebox y 100 el ícono
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: scaffoldBackgroundColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(100)),
                    ),
                    child: const _RegisterForm(),
                  )
                ],
              )),
        ),
      ),
    );
  }
}

class _RegisterForm extends StatelessWidget {
  const _RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'Register form',
            style: textStyle.titleMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextForm(
            label: 'Nombre completo',
            keyBoardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomTextForm(
            label: 'Correo',
            keyBoardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomTextForm(
            label: 'Repita la contraseña',
            keyBoardType: TextInputType.emailAddress,
          ),
          const Spacer(
            flex: 2,
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: CustomFilledButton(
              text: 'Crear',
              onPressed: () {},
              color: Colors.black,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('¿Ya tienes cuenta?'),
              TextButton(
                  onPressed: () {
                    if (context.canPop()) {
                      context.pop();
                    }
                    context.go('/login');
                  },
                  child: const Text('Ingresa aquí'))
            ],
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
