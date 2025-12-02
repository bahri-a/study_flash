import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_flash/src/features/cards/presentation/edit_card_screen/_get_back_color.dart';
import 'package:study_flash/src/features/cards/presentation/edit_card_screen/my_flip_card_for_edit_screen.dart';
import 'package:study_flash/src/features/study/data/vokabel_repository.dart';

class EditScreenCards extends StatefulWidget {
  final Color farbe;
  final String fach;
  final String thema;

  const EditScreenCards({
    super.key,
    required this.farbe,
    required this.fach,
    required this.thema,
  });

  @override
  State<EditScreenCards> createState() => _EditScreenCardsState();
}

class _EditScreenCardsState extends State<EditScreenCards> {
  VokabelRepository vokRepo = VokabelRepository();
  late Map<String, String> vokMap = vokRepo.mathe.vokabeln;
  late List<String> vokabelListe = vokMap.keys.toList();
  late List<String> translationListe = vokMap.values.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.color_lens_outlined, size: 40),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.list, size: 40),
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                width: 340,
                height: 70,
                decoration: BoxDecoration(
                  color: widget.farbe,
                  border: BoxBorder.all(
                    width: 10,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    widget.fach,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: myFlipCardForEditScreen(
                widget: widget,
                vokabelListe: vokabelListe,
                translationListe: translationListe,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back_ios_rounded, size: 100),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                      left: 20,
                    ),
                    child: Column(
                      spacing: 20,
                      children: [
                        InkWell(
                          onTap: () {
                            context.push(
                              "/editCard/${widget.fach}/${widget.thema}",
                              extra: widget.farbe,
                            ); //!!!!dasdadsadassd
                            // context.push('/themenStudy/$fachName', extra: fachFarbe);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: getBackColor(widget.farbe),
                            ),
                            height: 40,
                            width: 150,
                            child: Center(
                              child: Text(
                                "Edit",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: getBackColor(widget.farbe),
                          ),
                          height: 40,
                          width: 150,

                          child: Center(
                            child: Text(
                              "Delete",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: getBackColor(widget.farbe),
                          ),
                          height: 40,
                          width: 150,
                          child: Center(
                            child: Text(
                              "Add card",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios_rounded, size: 100),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
