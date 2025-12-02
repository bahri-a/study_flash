import 'package:go_router/go_router.dart';
import 'package:study_flash/src/features/home/presentation/home_screen/home_screen.dart';

class HomeRoutes {
  static const String root = '/';

  static final routes = <GoRoute>[
    GoRoute(
      path: root,
      builder: (context, state) => const HomeScreen(),
    ),
  ];
}
