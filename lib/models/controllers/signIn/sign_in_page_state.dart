import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_page_state.freezed.dart';

@freezed
abstract class SignInPageState implements _$SignInPageState {
  factory SignInPageState({
    required bool isLoading,
    String? email,
    String? password,
    required GlobalKey<FormState> formState,
  }) = _SignInPageState;

  // TODO: コンストラクタに入れる必要ないかを精査
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  SignInPageState._();

  SignInPageState setLoading(bool enable) => copyWith(isLoading: enable);

  SignInPageState setEmail(String? email) => copyWith(email: email);

  SignInPageState setPassword(String? password) => copyWith(password: password);
}
