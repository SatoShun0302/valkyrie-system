import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:valkyrie_system/view/user/block_list_page.dart';
import 'package:valkyrie_system/view/user/user_create_update_page.dart';

class RootPage extends HookConsumerWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var currentNavIndex = useState(0);
    // 表示するページウィジェット
    List<Widget> pages = [const BlockListPage(), const UserCreatePage()];

    // ナビゲーションバー
    var navigationBar = const [
      NavigationDestination(
        selectedIcon: Icon(Icons.mail),
        icon: Icon(Icons.mail_outline),
        label: 'First',
      ),
      NavigationDestination(
        selectedIcon: Icon(Icons.egg),
        icon: Icon(Icons.egg_outlined),
        label: 'Second',
      ),
    ];

    return Scaffold(
      body: SafeArea(child: pages[currentNavIndex.value]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentNavIndex.value,
        onDestinationSelected: (int index) {
          currentNavIndex.value = index;
        },
        destinations: navigationBar,
      ),
    );
  }
}
