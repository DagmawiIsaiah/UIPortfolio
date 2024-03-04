import 'package:flutter/material.dart';

import '../utils/web_theme.dart' as wt;
import '../widgets/widgets.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({
    super.key,
  });

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: wt.WebColors.scaffoldbg,
      padding: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 40,
      ),
      child: Column(
        children: [
          const SectionText(
            title: "Contact",
            subTitle: "Get In Touch",
            isDark: false,
          ),
          const SizedBox(height: 60),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              Container(
                constraints: const BoxConstraints(maxWidth: 330),
                child: inputFiled("Name", "name", nameController, context),
              ),
              const SizedBox(width: 2),
              Container(
                constraints: const BoxConstraints(maxWidth: 330),
                child: inputFiled("Email", "email", emailController, context),
              ),
            ],
          ),
          const SizedBox(height: 20),
          inputFiled("Your message", "type here", messageController, context),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Submit"),
          ),
        ],
      ),
    );
  }

  Widget inputFiled(String title, String hintText,
      TextEditingController controller, context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 700),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.maxFinite,
            child: TextField(
              maxLines: (title == "Your message") ? 5 : 1,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: Theme.of(context).textTheme.bodySmall,
                fillColor: wt.WebColors.grey,
                filled: true,
                enabledBorder: InputBorder.none,
              ),
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }
}
