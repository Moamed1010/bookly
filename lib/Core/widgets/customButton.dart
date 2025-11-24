import 'package:bookly/Core/utils/Styles.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.backgroundcolor,
    required this.textcolor,
    this.borderRadius,
    required this.text,
  });
  final String text;
  final Color backgroundcolor;
  final Color textcolor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundcolor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        onPressed: () {},
        child: Text(text, style: Styles.textStyle18.copyWith(color: textcolor)),
      ),
    );
  }
}
