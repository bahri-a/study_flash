import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:study_flash/src/constants/user_colors.dart';
import 'package:study_flash/src/features/subjects/presentation/farbauswahl_provider.dart';

class AddFachScreen extends ConsumerWidget {
  AddFachScreen({super.key});

  final TextEditingController _controller = TextEditingController();

  final List<Color> farbauswahl = userColors;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedColor = ref.watch(selectedColorProvider);

    return Scaffold(
      appBar: AppBar(title: Text("add subject")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              //physics: CarouselScrollPhysics(),
              child: Row(
                children: [
                  for (final color in farbauswahl)
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: InkWell(
                        onTap: () {
                          ref
                              .read(selectedColorProvider.notifier)
                              .setColor(color);
                        },
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: color,
                            shape: BoxShape.circle,
                            border: selectedColor == color
                                ? Border.all(
                                    color: Colors.black,
                                    width: 3,
                                  )
                                : null,
                          ),
                          child: selectedColor == color
                              ? const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                )
                              : null,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: "subject",
                hintText: "e.x. math",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                prefixIcon: Icon(Icons.book),
                contentPadding: EdgeInsets.all(16),
              ),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              textCapitalization: TextCapitalization.sentences,
              autofocus: true,
              onSubmitted: (value) {
                //! Hier werden die Eingaben (Fachname und Farbe) des Nutzers in die Liste unten hinzugefügt
                String inputNutzer = _controller.text;
                faechereingaben[inputNutzer] = selectedColor;
                context.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}

Map<String, Color> faechereingaben = {};
