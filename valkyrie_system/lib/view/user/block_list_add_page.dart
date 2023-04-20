import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:valkyrie_system/constant/view_constant.dart';
import 'package:valkyrie_system/provider/user/block_list_provider.dart';

class BlockListAddPage extends HookConsumerWidget {
  const BlockListAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final platformList = ref.watch(blockListSearchProvider);
    final chosenPlatformId = useState<int>(1);
    final inputtedId = useState<String>('');
    final inputtedMemo = useState<String>('');

    /// プラットフォームドロップダウンリストに表示するアイテムを生成
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

    /// 表示するウィジェット
    return Scaffold(
      resizeToAvoidBottomInset: false, // keyboardを表示した際のoverflowを防ぐ
      body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: SizedBox(
                width: ViewConstant.deviceWidth * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                          flex: 3,
                          child: TextField(
                            decoration: const InputDecoration(
                                hintText: 'ユーザーIDを入力'
                            ),
                            onChanged: (text) {
                              inputtedId.value = text;
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Expanded(
                            flex: 1,
                            child: Text('メモ')
                        ),
                        Expanded(
                          flex: 3,
                          child: SizedBox(
                            height: ViewConstant.deviceWidth * 0.4,
                            child: TextField(
                              maxLines: null,
                              expands: true,
                              maxLength: 20,
                              maxLengthEnforcement: MaxLengthEnforcement.enforced,
                              textAlignVertical: TextAlignVertical.center,
                              decoration: const InputDecoration(
                                  hintText: 'メモ入力',
                              ),
                              onChanged: (text) {
                                inputtedId.value = text;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text("ブロックリストに追加する場合、以下の点に注意が必要です"),
                    const Text("・ブロックしたユーザーは、あなたが作成した対戦に参加できなくなります"),
                    const Text("・ブロックしたユーザーは、あなたが作成したチームに参加できなくなります"),
                    const Text("・ブロックしたユーザーが作成した対戦に参加できなくなります"),
                    const Text("・ブロックしたユーザーが作成したチームに参加できなくなります"),
                    ElevatedButton(
                        onPressed: () {

                        },
                        child: const Text("登録")
                    ),
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}
