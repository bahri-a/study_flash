import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:study_flash/src/constants/app_colors.dart';

part 'farbauswahl_provider.g.dart';

@riverpod
class SelectedColor extends _$SelectedColor {
  @override
  Color build() {
    return AppColors.bordeaux; // Dein Startwert
  }

  void setColor(Color newColor) {
    state = newColor;
  }
}
