import 'package:freezed_annotation/freezed_annotation.dart';

part 'shot_user_type.freezed.dart';

@freezed
abstract class ShotUserType with _$ShotUserType {
  const factory ShotUserType.onePerson({required String authUid}) = _OnePerson;

  const factory ShotUserType.threePerson() = _ThreePerson;

  const ShotUserType._();
}
