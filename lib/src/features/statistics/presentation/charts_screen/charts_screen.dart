import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_flash/src/features/home/presentation/home_screen/widgets/home_header.dart';
import 'package:study_flash/src/features/statistics/presentation/charts_screen/widgets/BalkenChartsscreen.dart';
import 'package:study_flash/src/features/statistics/presentation/charts_screen/widgets/statistics.dart';
import 'package:study_flash/src/features/subjects/data/subject_repository.dart';
import 'package:study_flash/src/features/subjects/domain/fach_model.dart';

class ChartsScreen extends StatelessWidget {
  ChartsScreen({super.key});

  SubjectRepository212121212121 fachrepo =
      SubjectRepository212121212121();
  late List<Fach> faecher = fachrepo.getFaecher().toList();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeHeader(),
        Statistics(),
        Expanded(
          child: ListView.builder(
            itemCount: faecher.length,
            itemBuilder: (context, index) {
              final Fach fach = faecher[index];
              return InkWell(
                onTap: () {
                  context.push(
                    '/chartsOfSubject/$fach',
                    extra: fach.farbe,
                  );
                },
                child: BalkenChartsscreen(fach: fach),
              );
            },
          ),
        ),
      ],
    );
  }
}
