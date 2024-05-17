import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  final String text;

  final Color? color;
  final Function()? onPressed;

  const CustomFilledButton(
      {super.key, required this.text, this.color, this.onPressed});

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(10);

    return FilledButton(
        style: FilledButton.styleFrom(
            backgroundColor: color,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: radius, topLeft: radius, bottomRight: radius))),
        onPressed: onPressed,
        child: Text(text));
  }
}
