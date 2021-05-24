// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_in_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInPageStateTearOff {
  const _$SignInPageStateTearOff();

  _SignInPageState call(
      {required bool isLoading,
      String? email,
      String? password,
      required GlobalKey<FormState> formState}) {
    return _SignInPageState(
      isLoading: isLoading,
      email: email,
      password: password,
      formState: formState,
    );
  }
}

/// @nodoc
const $SignInPageState = _$SignInPageStateTearOff();

/// @nodoc
mixin _$SignInPageState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  GlobalKey<FormState> get formState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInPageStateCopyWith<SignInPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInPageStateCopyWith<$Res> {
  factory $SignInPageStateCopyWith(
          SignInPageState value, $Res Function(SignInPageState) then) =
      _$SignInPageStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      String? email,
      String? password,
      GlobalKey<FormState> formState});
}

/// @nodoc
class _$SignInPageStateCopyWithImpl<$Res>
    implements $SignInPageStateCopyWith<$Res> {
  _$SignInPageStateCopyWithImpl(this._value, this._then);

  final SignInPageState _value;
  // ignore: unused_field
  final $Res Function(SignInPageState) _then;

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
abstract class _$SignInPageStateCopyWith<$Res>
    implements $SignInPageStateCopyWith<$Res> {
  factory _$SignInPageStateCopyWith(
          _SignInPageState value, $Res Function(_SignInPageState) then) =
      __$SignInPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      String? email,
      String? password,
      GlobalKey<FormState> formState});
}

/// @nodoc
class __$SignInPageStateCopyWithImpl<$Res>
    extends _$SignInPageStateCopyWithImpl<$Res>
    implements _$SignInPageStateCopyWith<$Res> {
  __$SignInPageStateCopyWithImpl(
      _SignInPageState _value, $Res Function(_SignInPageState) _then)
      : super(_value, (v) => _then(v as _SignInPageState));

  @override
  _SignInPageState get _value => super._value as _SignInPageState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? formState = freezed,
  }) {
    return _then(_SignInPageState(
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

class _$_SignInPageState extends _SignInPageState {
  _$_SignInPageState(
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
    return 'SignInPageState(isLoading: $isLoading, email: $email, password: $password, formState: $formState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInPageState &&
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
  _$SignInPageStateCopyWith<_SignInPageState> get copyWith =>
      __$SignInPageStateCopyWithImpl<_SignInPageState>(this, _$identity);
}

abstract class _SignInPageState extends SignInPageState {
  factory _SignInPageState(
      {required bool isLoading,
      String? email,
      String? password,
      required GlobalKey<FormState> formState}) = _$_SignInPageState;
  _SignInPageState._() : super._();

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
  _$SignInPageStateCopyWith<_SignInPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
