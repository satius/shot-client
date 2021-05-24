import 'package:freezed_annotation/freezed_annotation.dart';

part 'redirect_page_state.freezed.dart';

@freezed
abstract class RedirectPageState implements _$RedirectPageState {
  factory RedirectPageState(// {
      // required bool isLoadingStarted,
      // }
      ) = _RedirectPageState;

  RedirectPageState._();

// RedirectPageState setLoadingStarted() => copyWith(isLoadingStarted: true);
}
