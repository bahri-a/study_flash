import 'package:flutter/material.dart';

class Editcard extends StatelessWidget {
  final String? fach;
  final String? thema;
  final Color? farbe;
  const Editcard({super.key, this.fach, this.thema, this.farbe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("$fach in $thema ist $farbe")),
    );
  }
}
