import 'package:flutter/material.dart';

class AuthCheckBox extends StatefulWidget {
  final bool value;
  final Function(bool?) onChanged;

  const AuthCheckBox({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  _AuthCheckBoxState createState() => _AuthCheckBoxState();
}

class _AuthCheckBoxState extends State<AuthCheckBox> {
  late bool _value = widget.value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Row(
        children: [
          Container(
            child: Checkbox(
              value: _value,
              activeColor: Color(0xFFBB1017),
              onChanged: (bool? val) {
                setState(() {
                  _value = val!;
                });
                widget.onChanged.call(val);
              },
            ),
          ),
          SizedBox(width: 2),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: 'Creating account means agreeing to the ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'terms and conditions',
                    style: TextStyle(
                      color: Color(0xFFBB1017),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
