import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:study_flash/src/features/cards/presentation/cards_screen/add_fach_screen.dart';
import 'package:study_flash/src/features/cards/presentation/cards_screen/cards_screen.dart';
import 'package:study_flash/src/features/cards/presentation/edit_card_screen/edit_card.dart';
import 'package:study_flash/src/features/cards/presentation/edit_card_screen/edit_screen.dart';
import 'package:study_flash/src/features/cards/presentation/themen_cards_screen/themen_cards_screen.dart';

class CardsRoutes {
  static const String root = '/Cardsscreen';

  static final routes = <GoRoute>[
    GoRoute(
      path: root,
      builder: (context, state) => const CardsScreen(),
    ),

    GoRoute(
      path: '/themenCards/:fach',
      builder: (context, state) {
        final fach = state.pathParameters['fach']!;
        final farbe = state.extra as Color;
        return ThemenScreenCards(fachFarbe: farbe, fachName: fach);
      },
    ),

    GoRoute(
      path: '/addFach',
      builder: (context, state) => AddFachScreen(),
    ),

    GoRoute(
      path: '/edit/:fach/:thema',
      builder: (context, state) {
        final fach = state.pathParameters['fach']!;
        final thema = state.pathParameters['thema']!;
        final farbe = state.extra as Color;

        return EditScreenCards(
          farbe: farbe,
          fach: fach,
          thema: thema,
        );
      },
    ),

    GoRoute(
      path: '/editCard/:fach/:thema',
      builder: (context, state) {
        final fach = state.pathParameters['fach']!;
        final thema = state.pathParameters['thema']!;
        final farbe = state.extra as Color;

        return Editcard(fach: fach, thema: thema, farbe: farbe);
      },
    ),
  ];
}
