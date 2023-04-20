// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfile _$$_UserProfileFromJson(Map<String, dynamic> json) =>
    _$_UserProfile(
      userId: json['userId'] as String,
      cognitoId: json['cognitoId'] as String,
      userName: json['userName'] as String,
      selfIntroduction: json['selfIntroduction'] as String? ?? '',
      psId: json['psId'] as String? ?? '',
      xboxId: json['xboxId'] as String? ?? '',
      switchId: json['switchId'] as String? ?? '',
      steamId: json['steamId'] as String? ?? '',
      discordId: json['discordId'] as String? ?? '',
      twitterId: json['twitterId'] as String? ?? '',
      youtubeChannel: json['youtubeChannel'] as String? ?? '',
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      isDeleted: json['isDeleted'] as bool,
    );

Map<String, dynamic> _$$_UserProfileToJson(_$_UserProfile instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'cognitoId': instance.cognitoId,
      'userName': instance.userName,
      'selfIntroduction': instance.selfIntroduction,
      'psId': instance.psId,
      'xboxId': instance.xboxId,
      'switchId': instance.switchId,
      'steamId': instance.steamId,
      'discordId': instance.discordId,
      'twitterId': instance.twitterId,
      'youtubeChannel': instance.youtubeChannel,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'isDeleted': instance.isDeleted,
    };
