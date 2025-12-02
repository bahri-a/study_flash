import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Container(
          height: 100,
          width: 340,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromARGB(255, 13, 11, 11),
          ),
          child: Image.asset(
            'assets/images/charts0.png',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
