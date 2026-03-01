import 'package:flutter/material.dart';

class CustomCircularProgress extends StatelessWidget {
  const CustomCircularProgress({
    super.key,
    this.backgroundColor,
    this.color,
    this.size = 30.0,
  });

  final Color? backgroundColor;
  final Color? color;
  final double size;

  @override
  Widget build(context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: CircularProgressIndicator(
          strokeCap: StrokeCap.round,
          strokeWidth: size * 0.12,
          backgroundColor:
              backgroundColor ?? Colors.grey.withValues(alpha: 0.2),
          color: color ?? Colors.white,
        ),
      ),
    );
  }
}
