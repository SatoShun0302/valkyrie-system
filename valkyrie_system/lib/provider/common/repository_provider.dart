import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:valkyrie_system/repository/game/platform_repository.dart';
import 'package:valkyrie_system/repository/user/user_repository.dart';

/// ユーザーリポジトリーに対応したプロバイダー
final userRepositoryProvider = Provider.autoDispose(
    (ref) => UserRepository(),
);

/// プラットフォームリポジトリーに対応したプロバイダー
final platformRepositoryProvider = Provider.autoDispose(
        (ref) => PlatformRepository(),
);