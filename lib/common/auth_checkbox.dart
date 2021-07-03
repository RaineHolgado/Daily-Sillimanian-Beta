import 'package:daily_sillimanian_beta/helpers/constants.dart';
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
              activeColor: colorPalleteSecondary,
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
                style: Theme.of(context)
                    .primaryTextTheme
                    .overline!
                    .copyWith(color: colorPalleteCaption),
                children: <TextSpan>[
                  TextSpan(
                    text: 'terms and conditions',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .overline!
                        .copyWith(color: colorPalleteSecondary),
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
