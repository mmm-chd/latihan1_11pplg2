import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double? margin;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.text,
    this.margin = 0.0,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: margin ?? 0.0),
      child: MaterialButton(
        minWidth: double.infinity,
        height: 60,
        elevation: 0.5,
        onPressed: onPressed,
        color: Color(0xFF1976D2), // Light Blue color
        textColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
        focusColor: Colors.indigoAccent,
        hoverColor: Colors.indigoAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Text(text, style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
