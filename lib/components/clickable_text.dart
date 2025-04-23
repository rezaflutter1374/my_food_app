import 'package:flutter/material.dart';
import '../styles/app_styles.dart';

class ClickableText extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final TextStyle? style;

  const ClickableText({
    super.key,
    required this.text,
    required this.onTap,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.white24,
      child: Text(
        text,
        style: (style ?? AppStyles.bodyStyle).copyWith(
          decoration: TextDecoration.underline,
          decorationColor: AppStyles.accentColor,
        ),
      ),
    );
  }
}
