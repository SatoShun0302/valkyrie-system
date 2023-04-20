// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocked_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BlockedUser _$$_BlockedUserFromJson(Map<String, dynamic> json) =>
    _$_BlockedUser(
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      blockedDate: json['blockedDate'] as String,
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$$_BlockedUserToJson(_$_BlockedUser instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'blockedDate': instance.blockedDate,
      'comment': instance.comment,
    };
