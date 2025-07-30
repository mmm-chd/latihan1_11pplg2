import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  final String textFirstPart;
  final String textSecondPart;
  final VoidCallback? onTap;
  final double? marginTop;

  const MyRichText({
    super.key,
    required this.textFirstPart,
    required this.textSecondPart,
    this.onTap,
    this.marginTop,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop ?? 0.0),
      child: Center(
        child: RichText(
          text: TextSpan(
            text: textFirstPart,
            style: TextStyle(color: Colors.black, fontSize: 16),
            children: [
              TextSpan(
                text: textSecondPart,
                style: TextStyle(
                  color: Color(0xFF1976D2), // Light Blue color
                  fontWeight: FontWeight.bold,
                ),
                recognizer: TapGestureRecognizer()..onTap = onTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
