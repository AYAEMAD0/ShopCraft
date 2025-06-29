import 'package:flutter/material.dart';

class HoverIconButton extends StatefulWidget implements PreferredSizeWidget {
  @override
  _HoverIconButtonState createState() => _HoverIconButtonState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _HoverIconButtonState extends State<HoverIconButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: _isHovering
              ? Colors.white
              : Colors.transparent, 
          borderRadius: BorderRadius.circular(8),
        ),
        child: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
