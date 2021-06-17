import 'package:flutter/material.dart';

class InputTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final bool password;
  final bool autofocus;
  final String label;
  final String hintText;
  final bool suffixIcon;
  final Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final ValueKey<String>? valueKey;

  const InputTextFormField({
    Key? key,
    required this.controller,
    required this.label,
    required this.hintText,
    required this.onFieldSubmitted,
    this.password = false,
    this.textInputType = TextInputType.text,
    this.autofocus = false,
    this.suffixIcon = true,
    this.validator,
    this.valueKey,
  }) : super(key: key);

  @override
  _InputTextFormFieldState createState() => _InputTextFormFieldState();
}

class _InputTextFormFieldState extends State<InputTextFormField> {
  late bool isPassword = widget.password;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 262,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 43,
            child: TextFormField(
              key: widget.valueKey,
              controller: widget.controller,
              cursorWidth: 0.5,
              autofocus: widget.autofocus,
              obscureText: isPassword,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF3F3F3),
                suffixIcon: widget.password
                    ? GestureDetector(
                        onTap: () => setState(() {
                          isPassword = !isPassword;
                        }),
                        child: Icon(
                            isPassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.black,
                            size: 23),
                      )
                    : null,
                hintText: widget.hintText,
              ),
              validator: widget.validator,
              onFieldSubmitted: widget.onFieldSubmitted,
            ),
          ),
        ],
      ),
    );
  }
}
