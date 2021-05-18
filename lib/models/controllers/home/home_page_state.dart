import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_state.freezed.dart';

@freezed
abstract class HomePageState implements _$HomePageState {
  factory HomePageState({
    @required int counter,
    @required bool isChecked,
  }) = _HomePageState;

  HomePageState._();

  HomePageState increased() => copyWith(counter: counter + 1);

  HomePageState check(bool value) => copyWith(isChecked: value);
}
