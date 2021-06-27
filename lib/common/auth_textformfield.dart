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
  final _focusNode = FocusNode();
  bool isFilled = true;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      print("Has focus: ${_focusNode.hasFocus}");
      setState(() {
        isFilled = !isFilled;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
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
            // height: 45,
            child: TextFormField(
              focusNode: _focusNode,
              key: widget.valueKey,
              controller: widget.controller,
              cursorWidth: 0.5,
              autofocus: widget.autofocus,
              obscureText: isPassword,
              decoration: InputDecoration(
                  filled: isFilled,
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
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  // enabledBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.pink),
                  //   borderRadius: BorderRadius.circular(5.0),
                  // ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  hintText: widget.hintText,
                  contentPadding: EdgeInsets.only(
                      left: 12, right: 12, top: 15, bottom: 15)),
              validator: widget.validator,
              onFieldSubmitted: widget.onFieldSubmitted,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}
