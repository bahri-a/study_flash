import 'package:go_router/go_router.dart';
import '/src/features/study/presentation/study_screen/study_screen.dart';
import '/src/features/study/presentation/themen_study_screen/themen_study_screen.dart';
import 'package:flutter/material.dart';

class StudyRoutes {
  static final routes = <GoRoute>[
    GoRoute(
      path: '/study/:fach',
      builder: (context, state) {
        final fach = state.pathParameters['fach']!;
        final farbe = state.extra as Color;
        return StudyScreen(fach: fach, farbe: farbe);
      },
    ),

    GoRoute(
      path: '/themenStudy/:fach',
      builder: (context, state) {
        final fach = state.pathParameters['fach']!;
        final farbe = state.extra as Color;
        return ThemenScreenStudy(fachFarbe: farbe, fachName: fach);
      },
    ),
  ];
}
