// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'set_up_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SetUpPageStateTearOff {
  const _$SetUpPageStateTearOff();

  _SetUpPageState call(
      {required bool isLoading,
      String? shotId,
      required bool isMailAddressPublicChecked,
      required GlobalKey<FormState> formState}) {
    return _SetUpPageState(
      isLoading: isLoading,
      shotId: shotId,
      isMailAddressPublicChecked: isMailAddressPublicChecked,
      formState: formState,
    );
  }
}

/// @nodoc
const $SetUpPageState = _$SetUpPageStateTearOff();

/// @nodoc
mixin _$SetUpPageState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get shotId => throw _privateConstructorUsedError;
  bool get isMailAddressPublicChecked => throw _privateConstructorUsedError;
  GlobalKey<FormState> get formState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetUpPageStateCopyWith<SetUpPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetUpPageStateCopyWith<$Res> {
  factory $SetUpPageStateCopyWith(
          SetUpPageState value, $Res Function(SetUpPageState) then) =
      _$SetUpPageStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      String? shotId,
      bool isMailAddressPublicChecked,
      GlobalKey<FormState> formState});
}

/// @nodoc
class _$SetUpPageStateCopyWithImpl<$Res>
    implements $SetUpPageStateCopyWith<$Res> {
  _$SetUpPageStateCopyWithImpl(this._value, this._then);

  final SetUpPageState _value;
  // ignore: unused_field
  final $Res Function(SetUpPageState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? shotId = freezed,
    Object? isMailAddressPublicChecked = freezed,
    Object? formState = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      shotId: shotId == freezed
          ? _value.shotId
          : shotId // ignore: cast_nullable_to_non_nullable
              as String?,
      isMailAddressPublicChecked: isMailAddressPublicChecked == freezed
          ? _value.isMailAddressPublicChecked
          : isMailAddressPublicChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      formState: formState == freezed
          ? _value.formState
          : formState // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
    ));
  }
}

/// @nodoc
abstract class _$SetUpPageStateCopyWith<$Res>
    implements $SetUpPageStateCopyWith<$Res> {
  factory _$SetUpPageStateCopyWith(
          _SetUpPageState value, $Res Function(_SetUpPageState) then) =
      __$SetUpPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      String? shotId,
      bool isMailAddressPublicChecked,
      GlobalKey<FormState> formState});
}

/// @nodoc
class __$SetUpPageStateCopyWithImpl<$Res>
    extends _$SetUpPageStateCopyWithImpl<$Res>
    implements _$SetUpPageStateCopyWith<$Res> {
  __$SetUpPageStateCopyWithImpl(
      _SetUpPageState _value, $Res Function(_SetUpPageState) _then)
      : super(_value, (v) => _then(v as _SetUpPageState));

  @override
  _SetUpPageState get _value => super._value as _SetUpPageState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? shotId = freezed,
    Object? isMailAddressPublicChecked = freezed,
    Object? formState = freezed,
  }) {
    return _then(_SetUpPageState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      shotId: shotId == freezed
          ? _value.shotId
          : shotId // ignore: cast_nullable_to_non_nullable
              as String?,
      isMailAddressPublicChecked: isMailAddressPublicChecked == freezed
          ? _value.isMailAddressPublicChecked
          : isMailAddressPublicChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      formState: formState == freezed
          ? _value.formState
          : formState // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
    ));
  }
}

/// @nodoc

class _$_SetUpPageState extends _SetUpPageState {
  _$_SetUpPageState(
      {required this.isLoading,
      this.shotId,
      required this.isMailAddressPublicChecked,
      required this.formState})
      : super._();

  @override
  final bool isLoading;
  @override
  final String? shotId;
  @override
  final bool isMailAddressPublicChecked;
  @override
  final GlobalKey<FormState> formState;

  @override
  String toString() {
    return 'SetUpPageState(isLoading: $isLoading, shotId: $shotId, isMailAddressPublicChecked: $isMailAddressPublicChecked, formState: $formState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetUpPageState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.shotId, shotId) ||
                const DeepCollectionEquality().equals(other.shotId, shotId)) &&
            (identical(other.isMailAddressPublicChecked,
                    isMailAddressPublicChecked) ||
                const DeepCollectionEquality().equals(
                    other.isMailAddressPublicChecked,
                    isMailAddressPublicChecked)) &&
            (identical(other.formState, formState) ||
                const DeepCollectionEquality()
                    .equals(other.formState, formState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(shotId) ^
      const DeepCollectionEquality().hash(isMailAddressPublicChecked) ^
      const DeepCollectionEquality().hash(formState);

  @JsonKey(ignore: true)
  @override
  _$SetUpPageStateCopyWith<_SetUpPageState> get copyWith =>
      __$SetUpPageStateCopyWithImpl<_SetUpPageState>(this, _$identity);
}

abstract class _SetUpPageState extends SetUpPageState {
  factory _SetUpPageState(
      {required bool isLoading,
      String? shotId,
      required bool isMailAddressPublicChecked,
      required GlobalKey<FormState> formState}) = _$_SetUpPageState;
  _SetUpPageState._() : super._();

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  String? get shotId => throw _privateConstructorUsedError;
  @override
  bool get isMailAddressPublicChecked => throw _privateConstructorUsedError;
  @override
  GlobalKey<FormState> get formState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SetUpPageStateCopyWith<_SetUpPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
