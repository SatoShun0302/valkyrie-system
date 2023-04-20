
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blocked_user.freezed.dart';
part 'blocked_user.g.dart';

@freezed
class BlockedUser with _$BlockedUser {
  const factory BlockedUser({
    required String userId,
    required String userName,
    required String blockedDate,
    required String comment
}) = _BlockedUser;

factory BlockedUser.fromJson(Map<String, dynamic> json) => _$BlockedUserFromJson(json);

}