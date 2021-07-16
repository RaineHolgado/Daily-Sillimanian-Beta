import 'package:daily_sillimanian_beta/helpers/constants.dart';
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
          style: Theme.of(context)
              .primaryTextTheme
              .headline6!
              .copyWith(color: colorPalleteSecondary),
          children: <TextSpan>[
            TextSpan(
              text: childrenText1,
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
            TextSpan(
              text: childrenText2,
              style: Theme.of(context).primaryTextTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
