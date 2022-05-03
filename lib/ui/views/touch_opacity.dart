import 'package:flutter/material.dart';

class TouchOpacity extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;
  final Duration duration = const Duration(milliseconds: 50);
  final double opacity = 0.5;

  const TouchOpacity({required this.child, this.onTap, Key? key})
      : super(key: key);

  @override
  _TouchOpacityState createState() => _TouchOpacityState();
}

class _TouchOpacityState extends State<TouchOpacity> {
  bool _isDown = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isDown = true),
      onTapUp: (_) => setState(() => _isDown = false),
      onTapCancel: () => setState(() => _isDown = false),
      onTap: widget.onTap,
      child: AnimatedOpacity(
        child: widget.child,
        duration: widget.duration,
        opacity: _isDown ? widget.opacity : 1,
      ),
    );
  }
}
