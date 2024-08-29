import 'package:flutter/material.dart';

class TopUpPageSection extends StatelessWidget {
  final String? title;
  final Widget body;
  const TopUpPageSection({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (title != null) ...[
              Text(
                title!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
            body,
          ],
        ),
      ),
    );
  }
}
