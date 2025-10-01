export 'easy_padding.dart';
export 'easy_sizedbox.dart';
export 'easy_text.dart';

import 'package:flutter/material.dart';

class Alpi {
  static double width(BuildContext context, double factor) {
    return MediaQuery.of(context).size.width * (factor);
  }

  static double height(BuildContext context, double factor) {
    return MediaQuery.of(context).size.height * (factor);
  }
}
