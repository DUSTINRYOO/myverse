import 'package:flutter/material.dart';

class CustomOval extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, 28);
    path.quadraticBezierTo(size.width / 4 - 20, 0, size.width / 2, 0);
    path.quadraticBezierTo(size.width - size.width / 4 + 20, 0, size.width, 28);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
