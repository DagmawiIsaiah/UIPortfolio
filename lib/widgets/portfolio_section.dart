import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/web_theme.dart' as wt;
import '../widgets/widgets.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: wt.WebColors.scaffoldbg,
      padding: const EdgeInsets.symmetric(
        vertical: 40,
      ),
      child: const Column(
        children: [
          SectionText(
            title: "Portfolio",
            subTitle: "My Projects",
            isDark: false,
          ),
          SizedBox(height: 60),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              PortfolioCard(
                image: "af",
                title: "AppFlowy",
                description:
                    "Open source notion alternative. I was co-designer for the AppFlowy app and website,",
                link: "https://www.appflowy.io/",
              ),
              SizedBox(width: 20),
              PortfolioCard(
                image: "sb",
                title: "Supabase",
                description:
                    "Open source Firebase alternative. I was co-designer for the AppFlowy app and website,",
                link: "https://supabase.com/",
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
