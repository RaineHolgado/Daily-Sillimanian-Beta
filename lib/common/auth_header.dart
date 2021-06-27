
import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  final String text;
  final String childrenText1;
  final String childrenText2;

  const AuthHeader({
    Key? key,
    required this.text,
    required this.childrenText1,
    required this.childrenText2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      child: RichText(
        text: TextSpan(
          text: text,
          style: TextStyle(
            color: Color(0xFFBB1017),
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
          children: <TextSpan>[
            TextSpan(
              text: childrenText1,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: childrenText2,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
