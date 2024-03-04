import 'package:flutter/material.dart';

import '../utils/web_theme.dart' as wt;

class ToolCard extends StatelessWidget {
  final Widget image;
  final String title;
  const ToolCard({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 140,
      color: wt.WebColors.white.withOpacity(0.2),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
          image,
          const SizedBox(height: 20),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
