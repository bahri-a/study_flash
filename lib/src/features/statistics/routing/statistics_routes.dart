import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:study_flash/src/features/statistics/presentation/charts_screen/charts_of_subject.dart';
import 'package:study_flash/src/features/statistics/presentation/charts_screen/charts_screen.dart';

class ChartsRoutes {
  static const String root = '/Chartsscreen';

  static final routes = <GoRoute>[
    GoRoute(path: root, builder: (context, state) => ChartsScreen()),

    GoRoute(
      path: '/chartsOfSubject/:fach',
      builder: (context, state) {
        final fach = state.pathParameters['fach']!;
        final farbe = state.extra as Color;
        return ChartsOfSubject(farbe: farbe, fach: fach);
      },
    ),
  ];
}
