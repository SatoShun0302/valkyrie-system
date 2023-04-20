import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:valkyrie_system/constant/view_constant.dart';
import 'package:valkyrie_system/repository/game/platform_repository.dart';
import 'package:valkyrie_system/repository/user/user_repository.dart';
import 'package:valkyrie_system/router/go_router_list.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      routerConfig: GoRouterList.goRouter(),
      theme: ThemeData(
        textTheme: GoogleFonts.sawarabiGothicTextTheme(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  UserRepository userRepository = UserRepository();
  PlatformRepository platformRepository = PlatformRepository();

  void user() async {
    //var str = await userRepository.fetchBlockList();
    var result = await platformRepository.fetchPlatformList();

    print(result);
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    ViewConstant.deviceWidth = MediaQuery.of(context).size.width;
    ViewConstant.deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
                onPressed: () {
                  context.go('/blockListPage');
                },
                child: const Text("ブロックリスト一覧"),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/blockListAddPage');
              },
              child: const Text("ブロックリスト追加"),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/userCreatePage');
              },
              child: const Text("ユーザー新規作成"),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/userUpdatePage');
              },
              child: const Text("ユーザー更新"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {_incrementCounter();user();},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
