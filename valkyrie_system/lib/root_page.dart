import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:valkyrie_system/constant/view_constant.dart';
import 'package:valkyrie_system/view/user/block_list_page.dart';
import 'package:valkyrie_system/view/user/user_create_update_page.dart';

import 'view/user/user_top.dart';

class RootPage extends HookConsumerWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var currentNavIndex = useState(0);
    // 表示するページウィジェット
    List<Widget> pages = [
      UserTop(),
      Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue[100],
        child: const Center(child: Text('アカウント')),
      ),
      Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.green[100],
        child: const Center(child: Text('対戦')),
      ),
      Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.orange[100],
        child: const Center(child: Text('チーム')),
      ),
      Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.yellow[100],
        child: const Center(child: Text('その他')),
      ),
    ];

    // ナビゲーションバー
    var navigationBar = const [
      NavigationDestination(
        selectedIcon: Icon(Icons.home),
        icon: Icon(Icons.mail_outline),
        label: 'トップ',
      ),
      NavigationDestination(
        selectedIcon: Icon(Icons.person),
        icon: Icon(Icons.person_outlined),
        label: 'アカウント',
      ),
      NavigationDestination(
        selectedIcon: Icon(Icons.sort),
        icon: Icon(Icons.egg_outlined),
        label: '対戦',
      ),
      NavigationDestination(
        selectedIcon: Icon(Icons.egg),
        icon: Icon(Icons.egg_outlined),
        label: 'チーム',
      ),
      NavigationDestination(
        selectedIcon: Icon(Icons.egg),
        icon: Icon(Icons.egg_outlined),
        label: 'その他',
      ),
    ];

    return Scaffold(
      body: SafeArea(child: pages[currentNavIndex.value]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentNavIndex.value,
        elevation: 3.0,
        height: 60,
        backgroundColor: Colors.blueGrey[50],
        onDestinationSelected: (int index) {
          currentNavIndex.value = index;
        },
        destinations: navigationBar,
      ),
    );
  }
}
