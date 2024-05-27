import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  final String? label;
  final bool obscureText;
  final TextInputType? keyBoardType;
  final String? hintText;
  final String? errorMessage;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  const CustomTextForm(
      {super.key,
      this.obscureText = false,
      this.errorMessage,
      this.keyBoardType,
      this.label,
      this.hintText,
      this.onChanged,
      this.validator});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final border = OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    const borderRadius = Radius.circular(15);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: borderRadius,
              bottomLeft: borderRadius,
              bottomRight: borderRadius),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.06),
                blurRadius: 10,
                offset: const Offset(0, 5))
          ]),
      child: TextFormField(
        obscureText: obscureText,
        onChanged: onChanged,
        validator: validator,
        keyboardType: keyBoardType,
        style: const TextStyle(fontSize: 20, color: Colors.black54),
        decoration: InputDecoration(
          floatingLabelStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          enabledBorder: border,
          focusedBorder: border,
          errorBorder: border.copyWith(
              borderSide: const BorderSide(color: Colors.transparent)),
          focusedErrorBorder: border.copyWith(
              borderSide: const BorderSide(color: Colors.transparent)),
          isDense: true,
          label: label != null ? Text(label!) : null,
          hintText: hintText,
          errorText: errorMessage,
          focusColor: colors.primary,
          // icon: Icon( Icons.supervised_user_circle_outlined, color: colors.primary, )
        ),
      ),
    );
  }
}
