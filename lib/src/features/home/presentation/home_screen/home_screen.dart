import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_flash/src/features/home/presentation/home_screen/widgets/grid_view_ansicht.dart';
import 'package:study_flash/src/features/home/presentation/home_screen/widgets/home_header.dart';
import 'package:study_flash/src/features/home/presentation/home_screen/widgets/progress_balken.dart';
import 'package:study_flash/src/features/subjects/application/fach_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // //todo: FUNKTION FÜR DEN ADD-BUTTON HINZUFÜGEN
    final faecherliste = ref.watch(fachProvider);

    return Container(
      child: Column(
        children: [
          Container(
            child: Column(
              spacing: 10,
              children: [
                HomeHeader(),
                ProgressBalken(),
                SizedBox(height: 10),
              ],
            ),
          ),

          Expanded(
            child: GridViewAnsicht(faecherliste: faecherliste),
          ),
        ],
      ),
    );
  }
}
