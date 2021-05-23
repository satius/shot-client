import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shot_client/models/entities/shot_user_type.dart';

part 'shot_user.freezed.dart';

@freezed
abstract class ShotUser implements _$ShotUser {
  factory ShotUser({
    required ShotUserType type,
    required String shotId,
    required bool isMailAddressPublic,
    required Timestamp createdAt,
  }) = _ShotUser;

  factory ShotUser.createNew({
    required String authUid,
    required String shotId,
    bool isMailAddressPublic = false,
  }) =>
      ShotUser(
        type: ShotUserType.onePerson(authUid: authUid),
        shotId: shotId,
        isMailAddressPublic: isMailAddressPublic,
        createdAt: Timestamp.now(),
      );

  ShotUser._();
}
