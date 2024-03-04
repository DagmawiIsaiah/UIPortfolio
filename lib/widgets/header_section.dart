import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  /// This is the header component.
  final VoidCallback scroll;
  const Header({
    super.key,
    required this.scroll,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 4),
          Text(
            "Home",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(width: 40),
          Text(
            "Prtfolio",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(width: 40),
          Text(
            "Skills",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const Spacer(flex: 2),
          ElevatedButton(
            onPressed: () {
              scroll();
            },
            child: const Text("Get in touch"),
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
