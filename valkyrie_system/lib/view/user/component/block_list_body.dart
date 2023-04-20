import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:valkyrie_system/constant/view_constant.dart';
import 'package:valkyrie_system/provider/common/repository_provider.dart';
import 'package:valkyrie_system/provider/user/block_list_provider.dart';
import 'package:valkyrie_system/view_model/user/block_list_notifier.dart';

class BlockListBody extends ConsumerWidget {
  const BlockListBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(blockListNotifierProvider);

    return data.isEmpty
        ? Text('empty')
    : ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(data[index].userName),
          subtitle: Text(data[index].blockedDate),
        );
      },
    );
  }
}
