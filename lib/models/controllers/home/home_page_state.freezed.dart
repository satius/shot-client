// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomePageStateTearOff {
  const _$HomePageStateTearOff();

  _HomePageState call({required int counter, required bool isChecked}) {
    return _HomePageState(
      counter: counter,
      isChecked: isChecked,
    );
  }
}

/// @nodoc
const $HomePageState = _$HomePageStateTearOff();

/// @nodoc
mixin _$HomePageState {
  int get counter => throw _privateConstructorUsedError;
  bool get isChecked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res>;
  $Res call({int counter, bool isChecked});
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  final HomePageState _value;
  // ignore: unused_field
  final $Res Function(HomePageState) _then;

  @override
  $Res call({
    Object? counter = freezed,
    Object? isChecked = freezed,
  }) {
    return _then(_value.copyWith(
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      isChecked: isChecked == freezed
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$HomePageStateCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$HomePageStateCopyWith(
          _HomePageState value, $Res Function(_HomePageState) then) =
      __$HomePageStateCopyWithImpl<$Res>;
  @override
  $Res call({int counter, bool isChecked});
}

/// @nodoc
class __$HomePageStateCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements _$HomePageStateCopyWith<$Res> {
  __$HomePageStateCopyWithImpl(
      _HomePageState _value, $Res Function(_HomePageState) _then)
      : super(_value, (v) => _then(v as _HomePageState));

  @override
  _HomePageState get _value => super._value as _HomePageState;

  @override
  $Res call({
    Object? counter = freezed,
    Object? isChecked = freezed,
  }) {
    return _then(_HomePageState(
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      isChecked: isChecked == freezed
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomePageState extends _HomePageState {
  _$_HomePageState({required this.counter, required this.isChecked})
      : super._();

  @override
  final int counter;
  @override
  final bool isChecked;

  @override
  String toString() {
    return 'HomePageState(counter: $counter, isChecked: $isChecked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomePageState &&
            (identical(other.counter, counter) ||
                const DeepCollectionEquality()
                    .equals(other.counter, counter)) &&
            (identical(other.isChecked, isChecked) ||
                const DeepCollectionEquality()
                    .equals(other.isChecked, isChecked)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(counter) ^
      const DeepCollectionEquality().hash(isChecked);

  @JsonKey(ignore: true)
  @override
  _$HomePageStateCopyWith<_HomePageState> get copyWith =>
      __$HomePageStateCopyWithImpl<_HomePageState>(this, _$identity);
}

abstract class _HomePageState extends HomePageState {
  factory _HomePageState({required int counter, required bool isChecked}) =
      _$_HomePageState;
  _HomePageState._() : super._();

  @override
  int get counter => throw _privateConstructorUsedError;
  @override
  bool get isChecked => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomePageStateCopyWith<_HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
