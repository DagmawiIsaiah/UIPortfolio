import 'package:flutter/material.dart';
import 'package:outlined_text/outlined_text.dart';

import '../utils/web_theme.dart' as wt;

class SectionText extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool isDark;
  const SectionText({
    super.key,
    required this.title,
    required this.subTitle,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        OutlinedText(
          strokes: [
            OutlinedTextStroke(
              color: wt.WebColors.black.withOpacity(0.3),
              width: 2,
            ),
          ],
          text: Text(
            title.toUpperCase(),
            style: (isDark)
                ? Theme.of(context).textTheme.headlineLarge
                : Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: wt.WebColors.scaffoldbg),
          ),
        ),
        Positioned(
          top: 20,
          child: Text(
            subTitle,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}
