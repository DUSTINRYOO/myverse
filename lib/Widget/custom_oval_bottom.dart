import 'package:flutter/material.dart';

/// Oval bottom clipper to clip widget in oval shape at the bottom side
class CustomOvalTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.quadraticBezierTo(size.width / 4, 20, size.width / 2, 20);
    path.quadraticBezierTo(size.width - size.width / 4, 20, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
