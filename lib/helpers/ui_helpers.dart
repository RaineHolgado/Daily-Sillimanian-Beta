import 'package:flutter/material.dart';

double getProportionateScreenHeight(double inputHeight, BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
  // 640 is the layout height that designer use
  return (inputHeight / 640.0) * screenHeight;
}

double getProportionateScreenWidth(double inputHeight, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  // 360 is the layout height that designer use
  return (inputHeight / 360.0) * screenWidth;
}
