import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_portfolio/widgets/tool_card.dart';

import '../utils/web_theme.dart' as wt;
import '../widgets/widgets.dart';

class ToolsSection extends StatelessWidget {
  const ToolsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: wt.WebColors.grey,
      padding: const EdgeInsets.symmetric(
        vertical: 40,
      ),
      child: Column(
        children: [
          const SectionText(
            title: "Skill",
            subTitle: "Exprerienced In",
            isDark: true,
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: [
              ToolCard(
                image: wt.WebIcons.figma,
                title: "Figma",
              ),
              const SizedBox(width: 10),
              ToolCard(
                image: wt.WebIcons.xd,
                title: "Adobe XD",
              ),
              const SizedBox(width: 10),
              ToolCard(
                image: wt.WebIcons.flutter,
                title: "Flutter",
              ),
              const SizedBox(width: 10),
              ToolCard(
                image: wt.WebIcons.python,
                title: "Python",
              ),
            ],
          )
        ],
      ),
    );
  }
}
