import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ThemenBalkenStudy extends StatelessWidget {
  const ThemenBalkenStudy({
    super.key,
    required this.fachName,
    required this.fachFarbe,
    required this.themenName,
  });

  final String fachName;
  final Color fachFarbe;
  final String themenName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push('/study/$fachName', extra: fachFarbe),
      child: Container(
        decoration: BoxDecoration(
          border: BoxBorder.all(width: 10, color: Colors.white),
          borderRadius: BorderRadius.circular(20),
          color: fachFarbe,
        ),
        width: 350,
        height: 70,
        margin: EdgeInsets.only(top: 30, left: 20, right: 20),

        child: Center(
          child: Text(
            themenName,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
