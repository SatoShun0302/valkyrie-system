import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:valkyrie_system/model/user/blocked_user.dart';
import 'package:valkyrie_system/provider/common/repository_provider.dart';
import 'package:valkyrie_system/view_model/user/block_list_notifier.dart';

final blockListSearchProvider = FutureProvider.autoDispose<List<dynamic>>((ref) async {
  final repository = ref.read(platformRepositoryProvider);
  final result = repository.fetchPlatformList();
  return result;
});

/// ブロックリストを一覧表示するウィジェットに対応するプロバイダー
final blockListNotifierProvider = StateNotifierProvider<BlockListNotifier, List<BlockedUser>>((ref) {
  return BlockListNotifier(ref.read(userRepositoryProvider));
});