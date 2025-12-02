import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:study_flash/src/routing/my_go_router.dart';
import 'package:study_flash/src/utils/dark_mode_notifier.dart';

final GoRouter _router = myGoRouter();

void main() {
  runApp(ProviderScope(child: RunMyApp()));
}

class RunMyApp extends StatelessWidget {
  const RunMyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkModeValue, child) {
        return MaterialApp.router(
          theme: isDarkModeValue ? darkTheme() : lightTheme(),
          debugShowCheckedModeBanner: false,
          routerConfig: _router,
        );
      },
    );
  }

  //

  ThemeData lightTheme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.cyan,
        brightness: Brightness.light,
      ),
    );
  }
}

ThemeData darkTheme() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.cyan,
      brightness: Brightness.dark,
    ),
  );
}
