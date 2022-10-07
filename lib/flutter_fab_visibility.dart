// ignore_for_file: prefer_typing_uninitialized_variables

library flutter_fab_visibility;

import 'package:flutter/material.dart';

class VisibleFAB extends StatefulWidget {
  const VisibleFAB({super.key, required this.onPressed, this.child});
  final VoidCallback onPressed;
  final child;

  @override
  State<VisibleFAB> createState() => VisibleFABState();
}

bool _showFab = true;

class VisibleFABState extends State<VisibleFAB> {
  @override
  Widget build(BuildContext context) {
    const duration = Duration(milliseconds: 300);
    return AnimatedSlide(
      duration: duration,
      offset: _showFab ? Offset.zero : const Offset(0, 2),
      child: AnimatedOpacity(
        duration: duration,
        opacity: _showFab ? 1 : 0,
        child: FloatingActionButton(
          onPressed: widget.onPressed,
          child: widget.child,
        ),
      ),
    );
  }
}
