import 'package:flutter/material.dart';

import '../../../subjects/data/themen_data_source.dart';
import 'widgets/themen_balken_study.dart';

class ThemenScreenStudy extends StatelessWidget {
  final Color fachFarbe;
  final String fachName;
  const ThemenScreenStudy({
    super.key,
    required this.fachFarbe,
    required this.fachName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.color_lens_outlined, size: 40),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.settings, size: 40),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            fachUeberschriftBalken(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ListView.builder(
                  itemCount: ThemenData.themen.length,
                  itemBuilder: (context, index) {
                    final thema = ThemenData.themen[index];
                    return ThemenBalkenStudy(
                      fachName: fachName,
                      fachFarbe: fachFarbe,
                      themenName: thema.themenName,
                    );
                  },

                  //   //todo: ANZAHL DER CONTAINER BASIEREND DARAUF WIE VIELE THEMEN EIN FACH BESITZT
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container fachUeberschriftBalken() {
    return Container(
      decoration: BoxDecoration(
        border: BoxBorder.all(width: 10, color: Colors.white),
        color: fachFarbe,
      ),
      width: 240,
      height: 70,
      margin: EdgeInsets.all(40),
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
    );
  }
}
