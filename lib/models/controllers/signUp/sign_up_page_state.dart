import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_page_state.freezed.dart';

@freezed
abstract class SignUpPageState implements _$SignUpPageState {
  factory SignUpPageState({
    required bool isLoading,
    String? email,
    String? password,
    required GlobalKey<FormState> formState,
  }) = _SignUpPageState;

  // TODO: コンストラクタに入れる必要ないかを精査
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  SignUpPageState._();

  SignUpPageState setLoading(bool enable) => copyWith(isLoading: enable);

  SignUpPageState setEmail(String? email) => copyWith(email: email);

  SignUpPageState setPassword(String? password) => copyWith(password: password);
}
