import 'package:bookly/Core/utils/Styles.dart';
import 'package:bookly/Features/home/presenation/views/wedgits/similer_box_list_view.dart';
import 'package:flutter/material.dart';

class SimilerBookSection extends StatelessWidget {
  const SimilerBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 16),
        similerBookListView(),
      ],
    );
  }
}
