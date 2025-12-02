import 'package:flutter/material.dart';
import 'package:study_flash/src/features/subjects/domain/fach_model.dart';
import 'create_box_home.dart';

class GridViewAnsicht extends StatelessWidget {
  final List<Fach> faecherliste;

  const GridViewAnsicht({super.key, required this.faecherliste});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
        ),
        itemCount: faecherliste.length,
        itemBuilder: (context, index) {
          final Fach fach = faecherliste[index];

          return CreateBox(
            fachFarbe: fach.farbe,
            fachName: fach.name,
          );
        },
      ),
    );
  }
}
