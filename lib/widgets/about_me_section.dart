import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_portfolio/providers/web_manager.dart';

import '../utils/web_theme.dart' as wt;
import '../widgets/widgets.dart';

class AboutMeSection extends StatelessWidget {
  final VoidCallback scroll;

  const AboutMeSection({
    super.key,
    required this.scroll,
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
            title: "About Me",
            subTitle: "Dagmawi Isaiah",
            isDark: true,
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 700,
            child: Text(
              "I am UI/UX designer with 2+ years of professional experience crafting seamless and engaging user experiences that not only meet the needs of the users but also align with the business objectives. And I do full-stack development.",
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Provider.of<WebManager>(context, listen: false).changeScrollMultipler(4);
              scroll();
            },
            child: const Text("Get in touch"),
          ),
        ],
      ),
    );
  }
}
