import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/web_theme.dart' as wt;
import '../widgets/widgets.dart';
import '../providers/web_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final double multipler = Provider.of<WebManager>(context).scrollMultipler;
    scrollToSection() {
      scrollController.animateTo(
        // The position you want to scroll to (in pixels)
        768 * multipler,
        // The duration of the scroll animation
        duration: const Duration(milliseconds: 500),
        // The type of curve used for the scroll animation
        curve: Curves.easeInOut,
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            /// Hero Section.
            Header(
              scroll: () {
                scrollToSection();
              },
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 60),
              child: wt.WebImages.designer,
            ),
            Row(
              children: [
                const Spacer(flex: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () async {
                          Uri url =
                              Uri.parse("https://github.com/DagmawiIsaiah");
                          if (!await launchUrl(url)) {
                            throw Exception('Could not launch $url');
                          }
                        },
                        child: wt.WebIcons.linkedIn),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () async {
                        Uri url = Uri.parse(
                            "https://www.linkedin.com/me?trk=p_mwlite_feed_updates-secondary_nav");
                        if (!await launchUrl(url)) {
                          throw Exception('Could not launch $url');
                        }
                      },
                      child: wt.WebIcons.gitHub,
                    ),
                  ],
                ),
                const Spacer(flex: 1),
              ],
            ),
            const SizedBox(height: 40),
            AboutMeSection(
              scroll: () {
                scrollToSection();
              },
            ),
            const PortfolioSection(),
            const ToolsSection(),
            const ContactSection(),
            const FooterSection(),
          ],
        ),
      ),
    );
  }
}
