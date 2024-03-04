import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/web_theme.dart' as wt;

class PortfolioCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String link;
  const PortfolioCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: wt.WebColors.grey,
      height: 450,
      width: 480,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 300,
            width: 440,
            child: Image.asset(
              "assets/images/$image.png",
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              SizedBox(
                width: 340,
                child: Text(
                  description,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              const Spacer(),
              OutlinedButton(
                onPressed: () async {
                  Uri url = Uri.parse(link);
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch $url');
                  }
                },
                child: const Text("VIST"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
