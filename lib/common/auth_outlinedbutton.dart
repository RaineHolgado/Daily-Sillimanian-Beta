import 'package:flutter/material.dart';

class AuthOutlinedButton extends StatelessWidget {
  final String label;
  final Function() onPressed;

  const AuthOutlinedButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 280,
      child: OutlinedButton(
        style: OutlinedButtonTheme.of(context).style,
        onPressed: onPressed,
        child: Text(
          label,
          style: Theme.of(context)
              .primaryTextTheme
              .button!
              .copyWith(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
