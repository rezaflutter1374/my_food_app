import 'package:flutter/material.dart';
import '../styles/app_styles.dart';

class ActionButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isPrimary;

  const ActionButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isPrimary = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        onPressed: onPressed,
        style:
            isPrimary
                ? AppStyles.orangeButtonStyle
                : AppStyles.smallButtonStyle,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Text(
            label,
            style: (isPrimary ? AppStyles.whiteBoldStyle : AppStyles.bodyStyle)
                .copyWith(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
