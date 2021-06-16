import 'package:flutter/material.dart';

class AuthElevatedButton extends StatelessWidget {
  final String label;
  final Function() onPressed;

  const AuthElevatedButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      width: 262,
      child: ElevatedButton(
        style: ElevatedButtonTheme.of(context).style,
        onPressed: onPressed,
        child: Text(
          label,
          style: Theme.of(context).primaryTextTheme.button,
        ),
      ),
    );
  }
}
