import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_page_state.freezed.dart';

@freezed
abstract class TopPageState implements _$TopPageState {
  factory TopPageState({
    required bool isLoading,
    String? email,
    String? password,
    required GlobalKey<FormState> formState,
  }) = _TopPageState;

  // TODO: コンストラクタに入れる必要ないかを精査
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  TopPageState._();

  TopPageState setLoading(bool enable) => copyWith(isLoading: enable);

  TopPageState setEmail(String? email) => copyWith(email: email);

  TopPageState setPassword(String? password) => copyWith(password: password);
}
