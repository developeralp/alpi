import 'package:flutter/foundation.dart';

class Console {
  static void writeLine(Object? message) {
    if (!kDebugMode || message == null) return;

    Object output;
    if (message is String) {
      output = message;
    } else if (message is Map || message is Iterable) {
      output = message;
    } else {
      try {
        final dynamic maybeMap = (message as dynamic).toJson();
        output = maybeMap ?? message.toString();
      } catch (_) {
        output = message.toString();
      }
    }

    debugPrint(output.toString());
  }
}
