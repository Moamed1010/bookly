import 'package:bookly/Core/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRate extends StatelessWidget {
  const BookRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.solidStar, size: 16, color: Color(0xffFFDD4F)),
        const SizedBox(width: 6.3),
        Text(
          "4.8",
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ),
        ),
        const SizedBox(width: 5),

        Text(
          "(2504)",
          style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
