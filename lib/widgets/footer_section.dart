import 'package:flutter/material.dart';

import '../utils/web_theme.dart' as wt;

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: wt.WebColors.grey,
      height: 30,
      child: Center(
        child: Text(
          "2024 © Dagmawi Isaiah | All right reserved ",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
