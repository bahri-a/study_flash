import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_flash/src/features/subjects/data/subject_repository.dart';
import 'package:study_flash/src/features/subjects/domain/fach_model.dart';
import 'widgets/BalkenChartsscreen.dart';

class ChartsOfSubject extends StatelessWidget {
  ChartsOfSubject({
    super.key,
    required this.farbe,
    required this.fach,
  });

  Color farbe;
  String fach;
  SubjectRepository212121212121 fachrepo =
      SubjectRepository212121212121();
  late List<Fach> faecher = fachrepo.getFaecher().toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Charts"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.list, size: 40),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          SizedBox(
            height: 125,
            child: Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  final Fach fach = faecher[index];
                  return InkWell(
                    onTap: () {
                      context.push(
                        '/chartsOfSubject/$fach',
                        extra: fach.farbe,
                      );
                    },
                    //! statisches Fach, eventuell ohne ListView bauen
                    child: BalkenChartsscreen(fach: fach),
                  );
                },
              ),
            ),
          ),
          Image.asset('assets/images/charts1.png', fit: BoxFit.cover),
          SizedBox(height: 20),
          Image.asset('assets/images/charts2.png', fit: BoxFit.cover),
        ],
      ),
    );
  }
}
