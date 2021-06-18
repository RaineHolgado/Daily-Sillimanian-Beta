import 'package:flutter/material.dart';

class OrgsView extends StatelessWidget {
  const OrgsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("object OrgsView");
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "ORGS",
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {
              // context.router.navigate(DetailRoute());
            },
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Text("OrgsView"),
        ),
      ),
    );
  }
}
