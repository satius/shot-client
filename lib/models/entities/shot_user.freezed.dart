// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shot_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShotUserTearOff {
  const _$ShotUserTearOff();

  _ShotUser call(
      {required ShotUserType type,
      required String shotId,
      required bool isMailAddressPublic,
      required Timestamp createdAt}) {
    return _ShotUser(
      type: type,
      shotId: shotId,
      isMailAddressPublic: isMailAddressPublic,
      createdAt: createdAt,
    );
  }
}

/// @nodoc
const $ShotUser = _$ShotUserTearOff();

/// @nodoc
mixin _$ShotUser {
  ShotUserType get type => throw _privateConstructorUsedError;
  String get shotId => throw _privateConstructorUsedError;
  bool get isMailAddressPublic => throw _privateConstructorUsedError;
  Timestamp get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShotUserCopyWith<ShotUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShotUserCopyWith<$Res> {
  factory $ShotUserCopyWith(ShotUser value, $Res Function(ShotUser) then) =
      _$ShotUserCopyWithImpl<$Res>;
  $Res call(
      {ShotUserType type,
      String shotId,
      bool isMailAddressPublic,
      Timestamp createdAt});

  $ShotUserTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$ShotUserCopyWithImpl<$Res> implements $ShotUserCopyWith<$Res> {
  _$ShotUserCopyWithImpl(this._value, this._then);

  final ShotUser _value;
  // ignore: unused_field
  final $Res Function(ShotUser) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? shotId = freezed,
    Object? isMailAddressPublic = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShotUserType,
      shotId: shotId == freezed
          ? _value.shotId
          : shotId // ignore: cast_nullable_to_non_nullable
              as String,
      isMailAddressPublic: isMailAddressPublic == freezed
          ? _value.isMailAddressPublic
          : isMailAddressPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }

  @override
  $ShotUserTypeCopyWith<$Res> get type {
    return $ShotUserTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$ShotUserCopyWith<$Res> implements $ShotUserCopyWith<$Res> {
  factory _$ShotUserCopyWith(_ShotUser value, $Res Function(_ShotUser) then) =
      __$ShotUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {ShotUserType type,
      String shotId,
      bool isMailAddressPublic,
      Timestamp createdAt});

  @override
  $ShotUserTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$ShotUserCopyWithImpl<$Res> extends _$ShotUserCopyWithImpl<$Res>
    implements _$ShotUserCopyWith<$Res> {
  __$ShotUserCopyWithImpl(_ShotUser _value, $Res Function(_ShotUser) _then)
      : super(_value, (v) => _then(v as _ShotUser));

  @override
  _ShotUser get _value => super._value as _ShotUser;

  @override
  $Res call({
    Object? type = freezed,
    Object? shotId = freezed,
    Object? isMailAddressPublic = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_ShotUser(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShotUserType,
      shotId: shotId == freezed
          ? _value.shotId
          : shotId // ignore: cast_nullable_to_non_nullable
              as String,
      isMailAddressPublic: isMailAddressPublic == freezed
          ? _value.isMailAddressPublic
          : isMailAddressPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// @nodoc

class _$_ShotUser extends _ShotUser {
  _$_ShotUser(
      {required this.type,
      required this.shotId,
      required this.isMailAddressPublic,
      required this.createdAt})
      : super._();

  @override
  final ShotUserType type;
  @override
  final String shotId;
  @override
  final bool isMailAddressPublic;
  @override
  final Timestamp createdAt;

  @override
  String toString() {
    return 'ShotUser(type: $type, shotId: $shotId, isMailAddressPublic: $isMailAddressPublic, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShotUser &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.shotId, shotId) ||
                const DeepCollectionEquality().equals(other.shotId, shotId)) &&
            (identical(other.isMailAddressPublic, isMailAddressPublic) ||
                const DeepCollectionEquality()
                    .equals(other.isMailAddressPublic, isMailAddressPublic)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(shotId) ^
      const DeepCollectionEquality().hash(isMailAddressPublic) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$ShotUserCopyWith<_ShotUser> get copyWith =>
      __$ShotUserCopyWithImpl<_ShotUser>(this, _$identity);
}

abstract class _ShotUser extends ShotUser {
  factory _ShotUser(
      {required ShotUserType type,
      required String shotId,
      required bool isMailAddressPublic,
      required Timestamp createdAt}) = _$_ShotUser;
  _ShotUser._() : super._();

  @override
  ShotUserType get type => throw _privateConstructorUsedError;
  @override
  String get shotId => throw _privateConstructorUsedError;
  @override
  bool get isMailAddressPublic => throw _privateConstructorUsedError;
  @override
  Timestamp get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShotUserCopyWith<_ShotUser> get copyWith =>
      throw _privateConstructorUsedError;
}
