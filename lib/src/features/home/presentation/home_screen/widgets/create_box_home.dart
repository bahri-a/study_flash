import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_flash/src/core/data/CoreService.dart';
import 'package:study_flash/src/core/data/repositories/subject_repository.dart';

class CreateBox extends StatelessWidget {
  final Color fachFarbe;
  final String fachName;
  const CreateBox({
    super.key,
    required this.fachFarbe,
    required this.fachName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        context.push('/themenStudy/$fachName', extra: fachFarbe);

        final myCoreService = CoreService();

        final myRepo = SubjectRepository(myCoreService);

        final subjects = await myRepo.getSubjects();

        print("Geladen: ${subjects}");
        print("Type: ${subjects.runtimeType}");
      },
      child: Column(
        children: [
          Container(
            height: 140,
            width: 180,
            decoration: BoxDecoration(
              color: fachFarbe,
              border: BoxBorder.all(width: 8, color: Colors.white),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text(
                fachName,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
