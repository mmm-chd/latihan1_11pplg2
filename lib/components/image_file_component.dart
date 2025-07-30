import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  final String imagePath;
  final double? width, marginTop;

  const MyImage({
    super.key,
    required this.imagePath,
    this.width,
    this.marginTop,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: EdgeInsets.only(top: marginTop ?? 0.0),
      child: Image.asset(imagePath),
    );
  }
}
