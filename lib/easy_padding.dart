import 'package:flutter/widgets.dart';

class EasyPadding extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;

  const EasyPadding._({super.key, required this.padding, required this.child});

  /// Equal padding on all sides
  factory EasyPadding.all(double value, {Key? key, required Widget child}) {
    return EasyPadding._(
      key: key,
      padding: EdgeInsets.all(value),
      child: child,
    );
  }

  /// Different padding for each side
  factory EasyPadding.only({
    Key? key,
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
    required Widget child,
  }) {
    return EasyPadding._(
      key: key,
      padding: EdgeInsets.only(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
      ),
      child: child,
    );
  }

  /// Symmetric padding
  factory EasyPadding.symmetric({
    Key? key,
    double vertical = 0,
    double horizontal = 0,
    required Widget child,
  }) {
    return EasyPadding._(
      key: key,
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(padding: padding, child: child);
  }
}
