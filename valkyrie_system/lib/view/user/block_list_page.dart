import 'package:flutter/material.dart';
import 'package:valkyrie_system/constant/view_constant.dart';
import 'package:valkyrie_system/view/user/component/block_list_body.dart';
import 'package:valkyrie_system/view/user/component/block_list_search.dart';

class BlockListPage extends StatelessWidget {
  const BlockListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // keyboardを表示した際のoverflowを防ぐ
      body: SafeArea(
        child: Center(
          child: Column(
              children: [
                SizedBox(
                  height: ViewConstant.deviceHeight * 0.18,
                    child: const BlockListSearch()
                ),
                SizedBox(
                  height: ViewConstant.deviceHeight * 0.7,
                  child: const BlockListBody(),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
