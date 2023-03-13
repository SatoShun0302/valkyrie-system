import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:valkyrie_system/main.dart';

class GoRouterList {

  static GoRouter goRouter() {
    final router = GoRouter(
        routes: <RouteBase>[
          GoRoute(
              path: "/",
            builder: (context, state) => const MyHomePage(title: "title"),
          ),
        ]
    );
    return router;
  }
}