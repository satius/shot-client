// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shot_user_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShotUserTypeTearOff {
  const _$ShotUserTypeTearOff();

  _OnePerson onePerson({required String authUid}) {
    return _OnePerson(
      authUid: authUid,
    );
  }

  _ThreePerson threePerson() {
    return const _ThreePerson();
  }
}

/// @nodoc
const $ShotUserType = _$ShotUserTypeTearOff();

/// @nodoc
mixin _$ShotUserType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authUid) onePerson,
    required TResult Function() threePerson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authUid)? onePerson,
    TResult Function()? threePerson,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnePerson value) onePerson,
    required TResult Function(_ThreePerson value) threePerson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnePerson value)? onePerson,
    TResult Function(_ThreePerson value)? threePerson,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShotUserTypeCopyWith<$Res> {
  factory $ShotUserTypeCopyWith(
          ShotUserType value, $Res Function(ShotUserType) then) =
      _$ShotUserTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShotUserTypeCopyWithImpl<$Res> implements $ShotUserTypeCopyWith<$Res> {
  _$ShotUserTypeCopyWithImpl(this._value, this._then);

  final ShotUserType _value;
  // ignore: unused_field
  final $Res Function(ShotUserType) _then;
}

/// @nodoc
abstract class _$OnePersonCopyWith<$Res> {
  factory _$OnePersonCopyWith(
          _OnePerson value, $Res Function(_OnePerson) then) =
      __$OnePersonCopyWithImpl<$Res>;
  $Res call({String authUid});
}

/// @nodoc
class __$OnePersonCopyWithImpl<$Res> extends _$ShotUserTypeCopyWithImpl<$Res>
    implements _$OnePersonCopyWith<$Res> {
  __$OnePersonCopyWithImpl(_OnePerson _value, $Res Function(_OnePerson) _then)
      : super(_value, (v) => _then(v as _OnePerson));

  @override
  _OnePerson get _value => super._value as _OnePerson;

  @override
  $Res call({
    Object? authUid = freezed,
  }) {
    return _then(_OnePerson(
      authUid: authUid == freezed
          ? _value.authUid
          : authUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnePerson extends _OnePerson {
  const _$_OnePerson({required this.authUid}) : super._();

  @override
  final String authUid;

  @override
  String toString() {
    return 'ShotUserType.onePerson(authUid: $authUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnePerson &&
            (identical(other.authUid, authUid) ||
                const DeepCollectionEquality().equals(other.authUid, authUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(authUid);

  @JsonKey(ignore: true)
  @override
  _$OnePersonCopyWith<_OnePerson> get copyWith =>
      __$OnePersonCopyWithImpl<_OnePerson>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authUid) onePerson,
    required TResult Function() threePerson,
  }) {
    return onePerson(authUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authUid)? onePerson,
    TResult Function()? threePerson,
    required TResult orElse(),
  }) {
    if (onePerson != null) {
      return onePerson(authUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnePerson value) onePerson,
    required TResult Function(_ThreePerson value) threePerson,
  }) {
    return onePerson(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnePerson value)? onePerson,
    TResult Function(_ThreePerson value)? threePerson,
    required TResult orElse(),
  }) {
    if (onePerson != null) {
      return onePerson(this);
    }
    return orElse();
  }
}

abstract class _OnePerson extends ShotUserType {
  const factory _OnePerson({required String authUid}) = _$_OnePerson;
  const _OnePerson._() : super._();

  String get authUid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnePersonCopyWith<_OnePerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ThreePersonCopyWith<$Res> {
  factory _$ThreePersonCopyWith(
          _ThreePerson value, $Res Function(_ThreePerson) then) =
      __$ThreePersonCopyWithImpl<$Res>;
}

/// @nodoc
class __$ThreePersonCopyWithImpl<$Res> extends _$ShotUserTypeCopyWithImpl<$Res>
    implements _$ThreePersonCopyWith<$Res> {
  __$ThreePersonCopyWithImpl(
      _ThreePerson _value, $Res Function(_ThreePerson) _then)
      : super(_value, (v) => _then(v as _ThreePerson));

  @override
  _ThreePerson get _value => super._value as _ThreePerson;
}

/// @nodoc

class _$_ThreePerson extends _ThreePerson {
  const _$_ThreePerson() : super._();

  @override
  String toString() {
    return 'ShotUserType.threePerson()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ThreePerson);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String authUid) onePerson,
    required TResult Function() threePerson,
  }) {
    return threePerson();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String authUid)? onePerson,
    TResult Function()? threePerson,
    required TResult orElse(),
  }) {
    if (threePerson != null) {
      return threePerson();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnePerson value) onePerson,
    required TResult Function(_ThreePerson value) threePerson,
  }) {
    return threePerson(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnePerson value)? onePerson,
    TResult Function(_ThreePerson value)? threePerson,
    required TResult orElse(),
  }) {
    if (threePerson != null) {
      return threePerson(this);
    }
    return orElse();
  }
}

abstract class _ThreePerson extends ShotUserType {
  const factory _ThreePerson() = _$_ThreePerson;
  const _ThreePerson._() : super._();
}
