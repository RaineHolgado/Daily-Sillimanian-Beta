import 'package:flutter/material.dart';

class AuthUnderLineButton extends StatelessWidget {
  final String label;
  final Function() onTap;

  const AuthUnderLineButton({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: Color(0xFFBB1017),
          width: 2.0,
        ))),
        child: Text(
          label,
          style: TextStyle(
            color: Color(0xFFBB1017),
            fontSize: 10,
            letterSpacing: 3,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
