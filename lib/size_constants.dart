import 'package:flutter/material.dart';

class SizeConstants {
  double portraitWidth(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.75;
  }

  double landscapeWidth(BuildContext context) {
    return MediaQuery.of(context).size.height * 0.75;
  }
}
