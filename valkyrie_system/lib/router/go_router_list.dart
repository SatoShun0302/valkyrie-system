import 'package:go_router/go_router.dart';
import 'package:valkyrie_system/main.dart';
import 'package:valkyrie_system/root_page.dart';
import 'package:valkyrie_system/view/user/block_list_add_page.dart';
import 'package:valkyrie_system/view/user/block_list_page.dart';
import 'package:valkyrie_system/view/user/user_create_update_page.dart';

class GoRouterList {
  static GoRouter goRouter() {
    final router = GoRouter(routes: <RouteBase>[
      GoRoute(
        path: "/",
        builder: (context, state) => const RootPage(),
      ),
      GoRoute(
        path: "/blockListPage",
        builder: (context, state) => const BlockListPage(),
      ),
      GoRoute(
        path: "/blockListAddPage",
        builder: (context, state) => const BlockListAddPage(),
      ),
      GoRoute(
        path: "/userCreatePage",
        builder: (context, state) => const UserCreatePage(),
      ),
      GoRoute(
        path: "/userUpdatePage",
        builder: (context, state) => const UserCreatePage(isUpdate: true),
      ),
    ]);
    return router;
  }
}
