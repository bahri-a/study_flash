import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_flash/src/features/cards/presentation/edit_card_screen/_get_back_color.dart';
import 'package:study_flash/src/features/cards/presentation/edit_card_screen/edit_screen.dart';

class myFlipCardForEditScreen extends StatelessWidget {
  const myFlipCardForEditScreen({
    super.key,
    required this.widget,
    required this.vokabelListe,
    required this.translationListe,
  });

  final EditScreenCards widget;
  final List<String> vokabelListe;
  final List<String> translationListe;

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      front: Stack(
        children: [
          Container(
            height: 175,
            width: 310,
            decoration: BoxDecoration(
              color: widget.farbe,
              border: BoxBorder.all(width: 8, color: Colors.white),
            ),
            child: Center(
              child: Text(
                vokabelListe[0],
                style: TextStyle(color: Colors.white, fontSize: 35),
              ),
            ),
          ),
          Positioned(
            top: 135,
            right: 10,
            child: Icon(
              CupertinoIcons.arrow_2_circlepath,
              size: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      back: Stack(
        children: [
          Container(
            height: 175,
            width: 310,
            decoration: BoxDecoration(
              color: getBackColor(widget.farbe),
              border: BoxBorder.all(width: 8, color: Colors.white),
            ),
            child: Center(
              child: Text(
                translationListe[0],
                style: TextStyle(color: Colors.white, fontSize: 35),
              ),
            ),
          ),
          Positioned(
            top: 135,
            right: 10,
            child: Icon(
              CupertinoIcons.arrow_2_circlepath,
              size: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
