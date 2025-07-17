import 'package:flutter/material.dart';

/// 💼 SendButton Widget
/// Reusable branded action button for submitting forms, triggering flows,
/// or navigating to confirmation overlays like AnimatedSuccess.

class SendButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isEnabled;

  const SendButton({
    required this.label,
    required this.onPressed,
    this.isEnabled = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isEnabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: isEnabled ? Colors.deepPurple[600] : Colors.grey[400],
        foregroundColor: Colors.white,
        elevation: isEnabled ? 4 : 0,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
