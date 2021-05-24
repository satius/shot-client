// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_up_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpPageStateTearOff {
  const _$SignUpPageStateTearOff();

  _SignUpPageState call(
      {required bool isLoading,
      String? email,
      String? password,
      required GlobalKey<FormState> formState}) {
    return _SignUpPageState(
      isLoading: isLoading,
      email: email,
      password: password,
      formState: formState,
    );
  }
}

/// @nodoc
const $SignUpPageState = _$SignUpPageStateTearOff();

/// @nodoc
mixin _$SignUpPageState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  GlobalKey<FormState> get formState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpPageStateCopyWith<SignUpPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpPageStateCopyWith<$Res> {
  factory $SignUpPageStateCopyWith(
          SignUpPageState value, $Res Function(SignUpPageState) then) =
      _$SignUpPageStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      String? email,
      String? password,
      GlobalKey<FormState> formState});
}

/// @nodoc
class _$SignUpPageStateCopyWithImpl<$Res>
    implements $SignUpPageStateCopyWith<$Res> {
  _$SignUpPageStateCopyWithImpl(this._value, this._then);

  final SignUpPageState _value;
  // ignore: unused_field
  final $Res Function(SignUpPageState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? formState = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      formState: formState == freezed
          ? _value.formState
          : formState // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
    ));
  }
}

/// @nodoc
abstract class _$SignUpPageStateCopyWith<$Res>
    implements $SignUpPageStateCopyWith<$Res> {
  factory _$SignUpPageStateCopyWith(
          _SignUpPageState value, $Res Function(_SignUpPageState) then) =
      __$SignUpPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      String? email,
      String? password,
      GlobalKey<FormState> formState});
}

/// @nodoc
class __$SignUpPageStateCopyWithImpl<$Res>
    extends _$SignUpPageStateCopyWithImpl<$Res>
    implements _$SignUpPageStateCopyWith<$Res> {
  __$SignUpPageStateCopyWithImpl(
      _SignUpPageState _value, $Res Function(_SignUpPageState) _then)
      : super(_value, (v) => _then(v as _SignUpPageState));

  @override
  _SignUpPageState get _value => super._value as _SignUpPageState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? formState = freezed,
  }) {
    return _then(_SignUpPageState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      formState: formState == freezed
          ? _value.formState
          : formState // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
    ));
  }
}

/// @nodoc

class _$_SignUpPageState extends _SignUpPageState {
  _$_SignUpPageState(
      {required this.isLoading,
      this.email,
      this.password,
      required this.formState})
      : super._();

  @override
  final bool isLoading;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final GlobalKey<FormState> formState;

  @override
  String toString() {
    return 'SignUpPageState(isLoading: $isLoading, email: $email, password: $password, formState: $formState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpPageState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.formState, formState) ||
                const DeepCollectionEquality()
                    .equals(other.formState, formState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(formState);

  @JsonKey(ignore: true)
  @override
  _$SignUpPageStateCopyWith<_SignUpPageState> get copyWith =>
      __$SignUpPageStateCopyWithImpl<_SignUpPageState>(this, _$identity);
}

abstract class _SignUpPageState extends SignUpPageState {
  factory _SignUpPageState(
      {required bool isLoading,
      String? email,
      String? password,
      required GlobalKey<FormState> formState}) = _$_SignUpPageState;
  _SignUpPageState._() : super._();

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get password => throw _privateConstructorUsedError;
  @override
  GlobalKey<FormState> get formState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignUpPageStateCopyWith<_SignUpPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
