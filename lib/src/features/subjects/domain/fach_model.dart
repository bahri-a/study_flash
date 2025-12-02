import 'package:flutter/material.dart';

class Fach {
  final int id;
  String name;
  Color farbe;
  Map<String, String> vokabeln;
  Map<int, String> themen;

  Fach({
    required this.name,
    required this.farbe,
    required this.vokabeln,
    required this.id,
    required this.themen,
  });
}
