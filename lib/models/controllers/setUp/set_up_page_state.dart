import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_up_page_state.freezed.dart';

@freezed
abstract class SetUpPageState implements _$SetUpPageState {
  factory SetUpPageState({
    required bool isLoading,
    String? shotId,
    required bool isMailAddressPublicChecked,
    required GlobalKey<FormState> formState,
  }) = _SetUpPageState;

  final shotIdFocusNode = FocusNode();

  SetUpPageState._();

  SetUpPageState setLoading(bool enable) => copyWith(isLoading: enable);

  SetUpPageState setShotId(String? shotId) => copyWith(shotId: shotId);
}
