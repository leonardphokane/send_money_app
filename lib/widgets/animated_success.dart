import 'package:flutter/material.dart'; // ✅ Essential to unlock Colors, Scaffold, etc.

/// 🎉 AnimatedSuccess Widget
/// Confirmation screen with scale animation and auto pop after delay.

class AnimatedSuccess extends StatefulWidget {
  const AnimatedSuccess({super.key});

  @override
  State<AnimatedSuccess> createState() => _AnimatedSuccessState();
}

class _AnimatedSuccessState extends State<AnimatedSuccess>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
    );

    _controller.forward();

    // ⏱️ Auto pop after 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pop(context);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose(); // ✅ Now valid after adding correct superclass
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50, // ✅ Now recognized
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.check_circle, size: 100, color: Colors.deepPurple),
              SizedBox(height: 16),
              Text(
                "Payment Successful!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
