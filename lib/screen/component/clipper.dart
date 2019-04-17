import 'package:flutter/material.dart';

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(12, size.height - 12);

    var bottomControlPoint = Offset(size.width / 2, size.height);
    var bottomEndPoint = Offset(size.width - 12, size.height - 12);
    path.quadraticBezierTo(bottomControlPoint.dx, bottomControlPoint.dy,
        bottomEndPoint.dx, bottomEndPoint.dy);

    var rightControlPoint = Offset(size.width / 2, size.height);
    var rightEndPoint = Offset(size.width - 12, size.height - 12);
    path.quadraticBezierTo(rightControlPoint.dx, rightControlPoint.dy,
        rightEndPoint.dx, rightEndPoint.dy);

    var topControlPoint = Offset(size.width, size.height / 2);
    var topEndPoint = Offset(size.width - 12, 12);
    path.quadraticBezierTo(
        topControlPoint.dx, topControlPoint.dy, topEndPoint.dx, topEndPoint.dy);

    var leftControlPoint = Offset(size.width / 2, 0);
    var leftEndPoint = Offset(12, 12);
    path.quadraticBezierTo(leftControlPoint.dx, leftControlPoint.dy,
        leftEndPoint.dx, leftEndPoint.dy);

    var bottomCloseControlPoint = Offset(0, size.height / 2);
    var bottomCloseEndPoint = Offset(12, size.height - 12);
    path.quadraticBezierTo(
        bottomCloseControlPoint.dx,
        bottomCloseControlPoint.dy,
        bottomCloseEndPoint.dx,
        bottomCloseEndPoint.dy);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}