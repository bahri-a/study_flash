import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../../common_widgets/drawer_menu.dart';
import '../../data/vokabel_repository.dart';
import 'widgets/create_flashcard_study.dart';

class StudyScreen extends StatefulWidget {
  final String fach;
  final Color farbe;

  const StudyScreen({
    super.key,
    required this.fach,
    required this.farbe,
  });

  @override
  State<StudyScreen> createState() => _StudyScreenState();
}

class _StudyScreenState extends State<StudyScreen> {
  VokabelRepository vokRepo = VokabelRepository();
  late Map<String, String> vokMap = vokRepo.mathe.vokabeln;
  late List<String> vokabelListe = vokMap.keys.toList();
  late List<String> translationListe = vokMap.values.toList();
  int i = 0;

  late List<String> richtigeVokabeln = vokRepo.richtigeVokabeln;
  late List<String> falscheVokabeln = vokRepo.falscheVokabeln;

  void correctWord() {
    richtigeVokabeln.add(vokabelListe[i]);
    print("correct words:");
    print(richtigeVokabeln);
  }

  void wrongWord() {
    falscheVokabeln.add(vokabelListe[i]);
    print("wrong words:");
    print(falscheVokabeln);
  }

  void nextWord() {
    setState(() {
      if (i < vokabelListe.length - 1) {
        i++;
      } else {
        i = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DrawerMenu(),
      appBar: AppBar(
        title: Text("Study"),
        actions: [
          Builder(
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: InkWell(
                  onTap: () {
                    return Scaffold.of(context).openEndDrawer();
                  },
                  child: Icon(Icons.settings, size: 30),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                border: BoxBorder.all(width: 10, color: Colors.white),
                color: widget.farbe,
              ),
              width: 240,
              height: 70,
              margin: EdgeInsets.all(40),
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
            padding: EdgeInsetsGeometry.only(
              top: 30,
              right: 20,
              left: 20,
            ),
            child: CreateFlashCard(
              key: ValueKey<String>(vokabelListe[i]),
              farbe: widget.farbe,
              vokabel: vokabelListe[i],
              translation: translationListe[i],
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(top: 50, right: 30),
            child: InkWell(
              onTap: () {
                correctWord();
                nextWord();
              },
              child: Icon(
                CupertinoIcons.check_mark_circled,
                size: 60,
                color: Colors.green.shade800,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 30),
            child: InkWell(
              onTap: () {
                wrongWord();
                nextWord();
              },
              child: Icon(
                CupertinoIcons.xmark_circle,
                size: 60,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
