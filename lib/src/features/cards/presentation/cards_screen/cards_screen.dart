import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:study_flash/src/features/cards/presentation/cards_screen/widgets/balken_cardsscreen.dart';
import 'package:study_flash/src/features/home/presentation/home_screen/widgets/home_header.dart';
import 'package:study_flash/src/features/home/presentation/home_screen/widgets/progress_balken.dart';
import 'package:study_flash/src/features/subjects/domain/fach_model.dart';
import 'package:study_flash/src/features/subjects/application/fach_provider.dart';

class CardsScreen extends ConsumerWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final faecher = ref.watch(fachProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push("/addFach");
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          HomeHeader(),
          SizedBox(height: 10),
          ProgressBalken(),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: faecher.length,
              itemBuilder: (context, index) {
                final Fach fach = faecher[index];
                return BalkenCardsscreen(fach: fach);
              },
            ),
          ),
        ],
      ),
    );
  }
}
