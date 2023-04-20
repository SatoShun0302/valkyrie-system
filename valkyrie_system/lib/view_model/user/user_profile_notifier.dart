import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:valkyrie_system/model/user/user_profile.dart';
import 'package:valkyrie_system/repository/user/abstract/base_user_repository.dart';

class UserProfileNotifier extends StateNotifier<UserProfile> {
  UserProfileNotifier(this._userRepository)
      : super(const UserProfile(
            userId: '',
            cognitoId: '',
            userName: '',
            selfIntroduction: '',
            psId: '',
            xboxId: '',
            switchId: '',
            steamId: '',
            discordId: '',
            twitterId: '',
            youtubeChannel: '',
            createdAt: '',
            updatedAt: '',
            isDeleted: false));

  final BaseUserRepository _userRepository;

  bool validateIsDuplicatedUserId(String userId) {
    return false;
  }

  void createNewUserProfile(
      {required String userId,
      required String userName,
      String? selfIntroduction,
      String? psId,
      String? xboxId,
      String? switchId,
      String? steamId,
      String? discordId,
      String? twitterId,
      String? youtubeChannel}) {
    // todo Amplifyなどを使って、cognitoIDを取得する方法をあとで実装する
    var cognitoId = 'testCognitoId';
    // viewから取得した値を元に、UserProfileを生成する
    var userProfile = state.copyWith(
        userId: userId,
        cognitoId: cognitoId,
        userName: userName,
        selfIntroduction: selfIntroduction ?? '',
        psId: psId ?? '',
        xboxId: xboxId ?? '',
        switchId: switchId ?? '',
        steamId: steamId ?? '',
        discordId: discordId ?? '',
        twitterId: twitterId ?? '',
        youtubeChannel: youtubeChannel ?? '',
        createdAt: youtubeChannel ?? '',
        updatedAt: youtubeChannel ?? '',
        isDeleted: false);
    // stateを更新
    state = userProfile;
  }

  void fetchUserProfile() {
    state = state.copyWith(userId: 'mockUserId');
  }

  void updateUserProfile() {}
}
