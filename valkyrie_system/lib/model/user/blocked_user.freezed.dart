// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blocked_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlockedUser _$BlockedUserFromJson(Map<String, dynamic> json) {
  return _BlockedUser.fromJson(json);
}

/// @nodoc
mixin _$BlockedUser {
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get blockedDate => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlockedUserCopyWith<BlockedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockedUserCopyWith<$Res> {
  factory $BlockedUserCopyWith(
          BlockedUser value, $Res Function(BlockedUser) then) =
      _$BlockedUserCopyWithImpl<$Res, BlockedUser>;
  @useResult
  $Res call(
      {String userId, String userName, String blockedDate, String comment});
}

/// @nodoc
class _$BlockedUserCopyWithImpl<$Res, $Val extends BlockedUser>
    implements $BlockedUserCopyWith<$Res> {
  _$BlockedUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userName = null,
    Object? blockedDate = null,
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      blockedDate: null == blockedDate
          ? _value.blockedDate
          : blockedDate // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BlockedUserCopyWith<$Res>
    implements $BlockedUserCopyWith<$Res> {
  factory _$$_BlockedUserCopyWith(
          _$_BlockedUser value, $Res Function(_$_BlockedUser) then) =
      __$$_BlockedUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId, String userName, String blockedDate, String comment});
}

/// @nodoc
class __$$_BlockedUserCopyWithImpl<$Res>
    extends _$BlockedUserCopyWithImpl<$Res, _$_BlockedUser>
    implements _$$_BlockedUserCopyWith<$Res> {
  __$$_BlockedUserCopyWithImpl(
      _$_BlockedUser _value, $Res Function(_$_BlockedUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userName = null,
    Object? blockedDate = null,
    Object? comment = null,
  }) {
    return _then(_$_BlockedUser(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      blockedDate: null == blockedDate
          ? _value.blockedDate
          : blockedDate // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BlockedUser implements _BlockedUser {
  const _$_BlockedUser(
      {required this.userId,
      required this.userName,
      required this.blockedDate,
      required this.comment});

  factory _$_BlockedUser.fromJson(Map<String, dynamic> json) =>
      _$$_BlockedUserFromJson(json);

  @override
  final String userId;
  @override
  final String userName;
  @override
  final String blockedDate;
  @override
  final String comment;

  @override
  String toString() {
    return 'BlockedUser(userId: $userId, userName: $userName, blockedDate: $blockedDate, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlockedUser &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.blockedDate, blockedDate) ||
                other.blockedDate == blockedDate) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, userName, blockedDate, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BlockedUserCopyWith<_$_BlockedUser> get copyWith =>
      __$$_BlockedUserCopyWithImpl<_$_BlockedUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlockedUserToJson(
      this,
    );
  }
}

abstract class _BlockedUser implements BlockedUser {
  const factory _BlockedUser(
      {required final String userId,
      required final String userName,
      required final String blockedDate,
      required final String comment}) = _$_BlockedUser;

  factory _BlockedUser.fromJson(Map<String, dynamic> json) =
      _$_BlockedUser.fromJson;

  @override
  String get userId;
  @override
  String get userName;
  @override
  String get blockedDate;
  @override
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$$_BlockedUserCopyWith<_$_BlockedUser> get copyWith =>
      throw _privateConstructorUsedError;
}
