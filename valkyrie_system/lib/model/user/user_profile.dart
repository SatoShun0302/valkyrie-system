import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  @JsonSerializable(explicitToJson: true)
  const factory UserProfile({
    required String userId,
    required String cognitoId,
    required String userName,
    @JsonKey(defaultValue: '') required String selfIntroduction,
    @JsonKey(defaultValue: '') required String psId,
    @JsonKey(defaultValue: '') required String xboxId,
    @JsonKey(defaultValue: '') required String switchId,
    @JsonKey(defaultValue: '') required String steamId,
    @JsonKey(defaultValue: '') required String discordId,
    @JsonKey(defaultValue: '') required String twitterId,
    @JsonKey(defaultValue: '') required String youtubeChannel,
    required String createdAt,
    required String updatedAt,
    required bool isDeleted
}) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);
}