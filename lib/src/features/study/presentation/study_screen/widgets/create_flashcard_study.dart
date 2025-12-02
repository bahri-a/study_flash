import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../constants/app_colors.dart';


class CreateFlashCard extends StatelessWidget {
  final Color farbe;
  final String vokabel;
  final String translation;

  const CreateFlashCard({
    super.key,
    required this.farbe,
    required this.vokabel,
    required this.translation,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlipCard(
          front: Stack(
            children: [
              Container(
                height: 250,
                width: 350,
                decoration: BoxDecoration(
                  color: farbe,
                  border: BoxBorder.all(
                    width: 8,
                    color: Colors.white,
                  ),
                ),
                child: Center(
                  child: Text(
                    vokabel,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                    ),
                  ),
                ),
              ),

              Positioned(
                bottom: 20,
                right: 20,
                child: Icon(
                  CupertinoIcons.arrow_2_circlepath,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          back: Stack(
            children: [
              Container(
                height: 250,
                width: 350,
                decoration: BoxDecoration(
                  color: _getBackColor(farbe),
                  border: BoxBorder.all(
                    width: 8,
                    color: Colors.white,
                  ),
                ),
                child: Center(
                  child: Text(
                    translation,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                    ),
                  ),
                ),
              ),

              Positioned(
                bottom: 20,
                right: 20,
                child: Icon(
                  CupertinoIcons.arrow_2_circlepath,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Color _getBackColor(Color farbe) {
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
