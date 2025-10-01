import 'package:flutter/material.dart';
import 'package:alpi/alpi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alpi Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DemoPage(),
    );
  }
}

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Alpi Demo")),
      body: Center(
        child: EasyPadding.all(
          16,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const BoldText("Hello Alpi!"),
              const SizedBoxHeight(12),
              const ItalicText("This text is italic."),
              const SizedBoxHeight(20),
              Container(
                width: Alpi.width(context, 0.5), // 50% of parent's width
                height: Alpi.height(context, 0.2), // 20% of parent's height
                color: Colors.blueAccent,
                alignment: Alignment.center,
                child: const BoldText("Responsive box"),
              ),
              const SizedBoxHeight(20),
              EasyPadding.symmetric(
                vertical: 8,
                horizontal: 16,
                child: Container(
                  color: Colors.green,
                  child: const ItalicText("Padded text with EasyPadding"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
