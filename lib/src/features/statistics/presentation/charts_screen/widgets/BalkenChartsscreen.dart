import 'package:flutter/material.dart';
import 'package:study_flash/src/features/subjects/domain/fach_model.dart';

class BalkenChartsscreen extends StatelessWidget {
  final Fach fach;
  const BalkenChartsscreen({super.key, required this.fach});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: BoxBorder.all(width: 10, color: Colors.white),
        borderRadius: BorderRadius.circular(20),
        color: fach.farbe,
      ),
      width: 350,
      height: 70,
      margin: EdgeInsets.only(top: 30, left: 20, right: 20),

      child: Center(
        child: Text(
          fach.name,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
