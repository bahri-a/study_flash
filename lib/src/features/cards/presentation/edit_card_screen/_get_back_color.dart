import 'package:flutter/material.dart';
import 'package:study_flash/src/constants/app_colors.dart';

Color getBackColor(Color farbe) {
  switch (farbe) {
    case AppColors.pink:
      return AppColors.pink.withAlpha(220);
    case AppColors.black:
      return AppColors.black.withAlpha(220);
    case AppColors.blue:
      return AppColors.blue.withAlpha(210);
    case AppColors.bordeaux:
      return AppColors.bordeaux.withAlpha(220);
    case AppColors.cyan:
      return Colors.cyan.withAlpha(150);
    case AppColors.green:
      return Colors.green.withAlpha(220);
    case AppColors.orange:
      return Colors.orange.withAlpha(190);
    case AppColors.purple:
      return Colors.purple.withAlpha(210);
    case AppColors.red:
      return Colors.red.withAlpha(220);
    default:
      return Colors.grey.shade300;
  }
}
