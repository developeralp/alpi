import 'package:flutter/widgets.dart';

class SizedBoxHeight extends StatelessWidget {
  final double height;
  final Widget? child;

  const SizedBoxHeight(this.height, {super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height, child: child);
  }
}

class SizedBoxWidth extends StatelessWidget {
  final double width;
  final Widget? child;

  const SizedBoxWidth(this.width, {super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width, child: child);
  }
}
