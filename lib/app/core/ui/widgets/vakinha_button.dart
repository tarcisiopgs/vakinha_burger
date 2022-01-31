import 'package:flutter/material.dart';

class VakinhaButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final double? width;
  final double? height;
  final Color? color;

  const VakinhaButton(
      {Key? key,
      required this.label,
      required this.onPressed,
      this.color,
      this.height = 50,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(), primary: color),
      ),
    );
  }
}
