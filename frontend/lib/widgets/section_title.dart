import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String actionText;
  const SectionTitle({
    super.key,
    required this.title,
    this.actionText = '',
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xFF0D47A1),
          ),
        ),
        if (actionText.isNotEmpty)
          Text(
            actionText,
            style: const TextStyle(
              color: Color(0xFF1565C0),
              fontWeight: FontWeight.w600,
            ),
          ),
      ],
    );
  }
}
