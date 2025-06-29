import 'package:flutter/material.dart';

class HoverCard extends StatefulWidget {
  final Widget child;

  const HoverCard({super.key, required this.child});

  @override
  State<HoverCard> createState() => _HoverCardState();
}

class _HoverCardState extends State<HoverCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: _isHovered
            ? Matrix4.translationValues(0, -5, 0)
            : Matrix4.translationValues(0, 0, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: AnimatedPhysicalModel(
          duration: const Duration(milliseconds: 300),
          shape: BoxShape.rectangle,
          elevation: _isHovered ? 10 : 3,
          color: Colors.white,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.circular(18),
          child: widget.child,
        ),
      ),
    );
  }
}
