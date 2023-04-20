import 'package:valkyrie_system/model/user/blocked_user.dart';
import 'package:valkyrie_system/model/user/user_profile.dart';
import 'package:valkyrie_system/repository/base_repository.dart';

abstract class BaseUserRepository extends BaseRepository {
  /// ユーザープロフィール取得
  Future<UserProfile> fetchUserProfile(String userId);

  /// ブロックリスト取得
  Future<List<BlockedUser>> fetchBlockList(Map jsonBody);

  /// ユーザープロフィール新規作成
  Future<bool> insertUserProfile(UserProfile userProfile);

  /// ユーザープロフィール更新
  Future<bool> updateUserProfile(UserProfile userProfile);

  /// ユーザー削除.
  /// cognitoIDの削除も行う.
  Future<bool> deleteUser();
}