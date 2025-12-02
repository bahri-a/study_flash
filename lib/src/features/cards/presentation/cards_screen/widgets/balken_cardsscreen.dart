import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_flash/src/features/subjects/domain/fach_model.dart';

class BalkenCardsscreen extends StatelessWidget {
  final Fach fach;
  late final String fachName = fach.name;
  BalkenCardsscreen({super.key, required this.fach});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push('/themenCards/$fachName', extra: fach.farbe);
      },
      child: Container(
        decoration: BoxDecoration(
          border: BoxBorder.all(width: 10, color: Colors.white),
          borderRadius: BorderRadius.circular(20),
          color: fach.farbe,
        ),
        width: 350,
        height: 70,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),

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
      ),
    );
  }
}
