import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';
import '../utils/web_theme.dart' as wt;
import '../providers/web_manager.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => WebManager(),
        ),
      ],
      child: const UIPortfolio(),
    ),
  );
}

class UIPortfolio extends StatelessWidget {
  const UIPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dagmawi Isaiah',
      debugShowCheckedModeBanner: false,
      theme: wt.WebTheme.webTheme,
      home: const HomePage(),
    );
  }
}
