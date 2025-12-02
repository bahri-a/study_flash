import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_flash/src/common_widgets/drawer_menu.dart';
import 'package:study_flash/src/features/cards/presentation/cards_screen/add_fach_screen.dart';
import 'package:study_flash/src/features/cards/presentation/cards_screen/cards_screen.dart';
import 'package:study_flash/src/features/cards/presentation/edit_card_screen/edit_card.dart';
import 'package:study_flash/src/features/cards/presentation/edit_card_screen/edit_screen.dart';
import 'package:study_flash/src/features/cards/presentation/themen_cards_screen/themen_cards_screen.dart';
import 'package:study_flash/src/features/home/presentation/home_screen/home_screen.dart';
import 'package:study_flash/src/features/statistics/presentation/charts_screen/charts_of_subject.dart';
import 'package:study_flash/src/features/statistics/presentation/charts_screen/charts_screen.dart';
import 'package:study_flash/src/features/study/presentation/study_screen/study_screen.dart';
import 'package:study_flash/src/features/study/presentation/themen_study_screen/themen_study_screen.dart';
import 'package:study_flash/src/routing/app_shell.dart';

GoRouter myGoRouter() {
  return GoRouter(
    initialLocation: '/', //Start URL
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ShellScreen(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/',
                builder: (context, state) => HomeScreen(),
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/Cardsscreen',
                builder: (context, state) => CardsScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/Chartsscreen',
                builder: (context, state) => ChartsScreen(),
              ),
            ],
          ),
        ],
      ),

      GoRoute(
        path: '/themenStudy/:fach',
        builder: (context, state) {
          final String fach = state.pathParameters['fach']!;
          final Color farbe = state.extra as Color;
          return ThemenScreenStudy(fachFarbe: farbe, fachName: fach);
        },
      ),

      GoRoute(
        path: '/themenCards/:fach',
        builder: (context, state) {
          final String fach = state.pathParameters['fach']!;
          final Color farbe = state.extra as Color;
          return ThemenScreenCards(fachFarbe: farbe, fachName: fach);
        },
      ),

      GoRoute(
        path: '/addFach',
        builder: (context, state) {
          return AddFachScreen();
        },
      ),

      GoRoute(
        path: '/study/:fach',
        builder: (context, state) {
          final String fach = state.pathParameters['fach']!;
          final Color farbe = state.extra as Color;
          return StudyScreen(fach: fach, farbe: farbe);
        },
      ),

      GoRoute(
        path: '/edit/:fach/:thema',
        builder: (context, state) {
          final String fach = state.pathParameters['fach']!;
          final String thema = state.pathParameters['thema']!;
          final Color farbe = state.extra as Color;
          return EditScreenCards(
            farbe: farbe,
            fach: fach,
            thema: thema,
          );
        },
      ),

      GoRoute(
        path: '/chartsOfSubject/:fach',
        builder: (context, state) {
          final String fach = state.pathParameters['fach']!;
          final Color farbe = state.extra as Color;
          return ChartsOfSubject(farbe: farbe, fach: fach);
        },
      ),

      GoRoute(
        path: '/settings',
        builder: (context, state) => DrawerMenu(),
      ),

      GoRoute(
        path: '/editCard/:fach/:thema',
        builder: (context, state) {
          final String fach = state.pathParameters['fach']!;
          final String thema = state.pathParameters['thema']!;
          final Color farbe = state.extra as Color;
          return Editcard(fach: fach, thema: thema, farbe: farbe);
        },
      ),
    ],
  );
}
