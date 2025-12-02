import 'package:flutter/material.dart';
import 'package:study_flash/src/common_widgets/left_over_balken.dart';
import 'package:study_flash/src/constants/app_colors.dart';

class ProgressBalken extends StatelessWidget {
  const ProgressBalken({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LeftOverCardsBalken(
          fach: "Mathe",
          cardsLeft: 13,
          farbe: AppColors.pink,
        ),
        LeftOverCardsBalken(
          fach: "Arabisch",
          cardsLeft: 23,
          farbe: AppColors.blue,
        ),
      ],
    );
  }
}
