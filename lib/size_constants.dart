import 'package:flutter/material.dart';

class SizeConstants {
  double portraitWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  double landscapeWidth(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.5;
  }
}
