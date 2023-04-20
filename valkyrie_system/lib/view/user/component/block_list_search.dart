import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:valkyrie_system/constant/view_constant.dart';
import 'package:valkyrie_system/provider/user/block_list_provider.dart';

class BlockListSearch extends HookConsumerWidget {
  const BlockListSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(blockListNotifierProvider.notifier);
    final platformList = ref.watch(blockListSearchProvider);

    final chosenPlatformId = useState<int>(1);
    final inputtedText = useState<String>('');


    /// プラットフォームドロップダウンリストに表示するアイテムを生成.
    List<DropdownMenuItem<Object>>? createPlatformDropdownItems(List<dynamic> list) {
      List<DropdownMenuItem<Object>>? items = [];
      for (final map in list) {
        map.forEach((key, value) {
          items.add(
            DropdownMenuItem(
              value: value,
              child: Text(key),
            ),
          );
        });
      }
      return items;
    }

    /// 表示するWidget
    return SizedBox(
      width: ViewConstant.deviceWidth * 0.9,
      child: Column(
          children: [
            Row(
                children: [
                  const Expanded(
                    flex: 1,
                      child: Text('プラットフォーム')
                  ),
                  Expanded(
                    flex: 2,
                      child: platformList.when(
                          data: (list) => list.isNotEmpty
                          ? DropdownButton(
                              items: createPlatformDropdownItems(list),
                              value: chosenPlatformId.value,
                              isExpanded: true,
                              onChanged: (value) {
                                chosenPlatformId.value = value as int;
                              }
                          )
                          : const Text('データ取得エラー'),
                          error: (error, _) {
                            return Text(error.toString());
                          },
                          loading: () => const CircularProgressIndicator(),
                      ),
                  ),
                ],
              ),
            Row(
                children: [
                  const Expanded(
                      flex: 1,
                      child: Text('ID')
                  ),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: 'ユーザーIDを入力'
                      ),
                      onChanged: (text) {
                        inputtedText.value = text;
                      },
                    ),
                  ),
                ],
              ),
            Padding(
              padding: EdgeInsets.only(top: ViewConstant.deviceWidth * 0.03),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                      )
                  ),
                  onPressed: () {
                    // ブロックリストを再取得する
                    notifier.fetchBlockedUserList();
                  },
                  child: const Text("検索")),
            ),
          ],
        ),
    );
  }
}
