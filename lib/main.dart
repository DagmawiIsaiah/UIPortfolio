import 'package:flutter/material.dart';

void main() {
  runApp(const UIPortfolio());
}

class UIPortfolio extends StatelessWidget {
  const UIPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'UI Portfolio',
      debugShowCheckedModeBanner: false,
      // theme: ,
      // home: HomePage(),
    );
  }
}
