import 'package:flutter/material.dart';

class HoverWelcome extends StatefulWidget {
  final value;
  const HoverWelcome({super.key, this.value});

  @override
  State<HoverWelcome> createState() => _HoverWelcomeState();
}

class _HoverWelcomeState extends State<HoverWelcome> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedScale(
        scale: isHovered ? 1.1 : 1.0,
        duration: const Duration(milliseconds: 200),
        child: widget.value,
      ),
    );
  }
}
