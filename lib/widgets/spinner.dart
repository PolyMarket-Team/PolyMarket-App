import 'package:flutter/material.dart';

class RotateSpinnerIcon extends StatefulWidget {
  final AssetImage iconImage;
  final Duration duration;
  final Color color;
  final double size;

  const RotateSpinnerIcon({
    Key? key,
    required this.iconImage,
    this.color = Colors.black,
    this.size = 24,
    this.duration = const Duration(milliseconds: 1800),
  }) : super(key: key);

  @override
  _SpinnerState createState() => _SpinnerState();
}

class _SpinnerState extends State<RotateSpinnerIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Widget _child;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 2000))
          ..repeat();
    _child =
        ImageIcon(widget.iconImage, size: widget.size, color: widget.color);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Tween<double> turnsTween = Tween<double>(
      begin: 1,
      end: 0,
    );

    return RotationTransition(
      turns: turnsTween.animate(_controller),
      child: _child,
    );
  }
}
