import 'package:valkyrie_system/model/user/blocked_user.dart';
import 'package:valkyrie_system/model/user/user_profile.dart';
import 'package:valkyrie_system/repository/user/abstract/base_user_repository.dart';

class UserRepository extends BaseUserRepository {
  @override
  Future<UserProfile> fetchUserProfile(String userId) async {
    var jsonBody = {'userId': userId};
    var response = await postApi("https://uncgxbr6e2hqkdz43ii3di7qiq0nabkt.lambda-url.ap-northeast-1.on.aws/", jsonBody: jsonBody);
    var userProfile = UserProfile.fromJson(getBody(response));
    return userProfile;
  }

  @override
  Future<List<BlockedUser>> fetchBlockList(Map jsonBody) async {
    var response = await postApi("https://7gqqukji64dlvusj3ye7qntcba0fbucs.lambda-url.ap-northeast-1.on.aws/", jsonBody: jsonBody);
    List<BlockedUser> blockedUserList = [];
    for (var data in getBody(response)) {
      var blockedUser = BlockedUser.fromJson(data);
      blockedUserList.add(blockedUser);
    }
    return blockedUserList;
  }

  @override
  Future<bool> insertUserProfile(UserProfile userProfile) {
    // TODO: implement insertUserProfile
    throw UnimplementedError();
  }

  @override
  Future<bool> updateUserProfile(UserProfile userProfile) {
    // TODO: implement updateUserProfile
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteUser() {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }
}