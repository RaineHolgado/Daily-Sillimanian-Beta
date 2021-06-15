import 'package:flutter/material.dart';

class StartUpview extends StatelessWidget {
  const StartUpview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 49),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  child: Text("Pressed"),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: Container(
                  color: Colors.red,
                  height: 40,
                  width: double.infinity,
                  child: Text("Button"),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {},
                child: Container(
                  color: Colors.red,
                  height: 40,
                  width: double.infinity,
                  child: Text("Button"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
