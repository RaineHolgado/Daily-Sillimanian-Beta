import 'package:flutter/material.dart';

class DsbScaffold extends StatelessWidget {
  final String? appBarTitle;
  final Widget? body;

  const DsbScaffold({Key? key, this.appBarTitle, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.maybePop(context);
            },
            child: Icon(Icons.arrow_back_ios_new),
          ),
          title: appBarTitle != null
              ? Text(
                  appBarTitle!,
                  style: Theme.of(context).appBarTheme.titleTextStyle,
                )
              : null,
        ),
        body: body,
      ),
    );
  }
}
