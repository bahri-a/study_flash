import 'package:go_router/go_router.dart';
import 'package:study_flash/src/common_widgets/drawer_menu.dart';

class SettingsRoutes {
  static final root = '/settings';

  static final routes = <GoRoute>[
    GoRoute(
      path: root,
      builder: (context, state) => const DrawerMenu(),
    ),
  ];
}
