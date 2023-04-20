import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:valkyrie_system/model/user/user_profile.dart';
import 'package:valkyrie_system/provider/common/repository_provider.dart';
import 'package:valkyrie_system/view_model/user/user_profile_notifier.dart';

/// ユーザープロフィール情報を保持するプロバイダー
final userProfileNotifierProvider = StateNotifierProvider<UserProfileNotifier, UserProfile>(
        (ref) => UserProfileNotifier(ref.read(userRepositoryProvider))
);