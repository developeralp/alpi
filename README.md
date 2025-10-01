# Alpi

🚀 **Alpi** is a lightweight Flutter **helper package** designed to speed up your UI development.  
With just a few lines, you get powerful shortcuts for `MediaQuery` sizing, effortless `Padding`, handy `SizedBox` spacers, and quick `Text` styling — making your Flutter code cleaner and faster to write.


## Features

### 🔹 Screen sizing helpers
Use the `Alpi` class to quickly calculate fractions of screen width and height. A MediaQuery alternative!

```dart
Alpi.width(context, 0.25);  // 25% of parent's width
Alpi.height(context, 0.50); // 50% of parent's height
````

---

### 🔹 EasyPadding

Simplify `Padding` widgets with clear constructors:

```dart
// Equal padding on all sides
EasyPadding.all(12, child: Text("All sides = 12"))

// Different padding for each side
EasyPadding.only(top: 8, bottom: 6, child: Text("Top 8, Bottom 6"))

// Symmetric padding
EasyPadding.symmetric(vertical: 10, horizontal: 20, child: Text("Vertical 10, Horizontal 20"))
```

---

### 🔹 SizedBox helpers

Shorthand for spacing or wrapping children with fixed width/height.

```dart
// Height-only spacer
SizedBoxHeight(20)

// Width-only spacer
SizedBoxWidth(16)

// With child
SizedBoxHeight(40, child: Text("Inside SizedBox"))
```

---

### 🔹 Text helpers

Quickly render bold or italic text without writing styles each time.

```dart
ItalicText("This is italic text")

BoldText("This is bold text")

// With custom style (overrides defaults)
BoldText(
  "Custom bold text",
  style: TextStyle(color: Colors.red, fontSize: 20),
)
```

---

## Getting started

Add `alpi` as a dependency in your `pubspec.yaml`:

```yaml
dependencies:
  alpi: ^0.0.1
```

Then import it in your Dart code:

```dart
import 'package:alpi/alpi.dart';
```

---

## Usage example

Here’s a minimal example of using Alpi in a widget tree:

```dart
import 'package:flutter/material.dart';
import 'package:alpi/alpi.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: EasyPadding.all(
          16,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BoldText("Hello Alpi!"),
              SizedBoxHeight(12),
              ItalicText("This text is italic."),
              SizedBoxHeight(20),
              Container(
                width: Alpi.width(context, 0.5),   // 50% of parent's width
                height: Alpi.height(context, 0.2), // 20% of parent's height
                color: Colors.blueAccent,
                alignment: Alignment.center,
                child: BoldText("Responsive box"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

---

## Additional information

* **Issues / Contributions:** Please open issues or PRs on GitHub.
* **License:** MIT.
* **Author:** Alperen Emeksiz
* **Contact:** developer.alperenemeksiz@gmail.com
