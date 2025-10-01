import 'package:flutter/material.dart';

class ItalicText extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const ItalicText(this.text, {super.key, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? const TextStyle(fontStyle: FontStyle.italic),
    );
  }
}

class BoldText extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const BoldText(this.text, {super.key, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? const TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
