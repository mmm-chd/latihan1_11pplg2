import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String label;
  final double? marginTop;
  final TextEditingController controller;
  final bool? obscureText, readOnly;
  final GestureTapCallback? onTap;

  const MyTextField({
    super.key,
    required this.label,
    required this.controller,
    this.obscureText = false,
    this.marginTop,
    this.onTap,
    this.readOnly,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop ?? 0.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: Color(0xFF1976D2)),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
        ),
        obscureText: obscureText ?? false,
        readOnly: readOnly ?? false,
        onTap: onTap,
      ),
    );
  }
}
