import 'package:shot_client/models/common/result.dart';
import 'package:shot_client/models/entities/shot_user.dart';

abstract class UserRepository {
  Future<Result<void>> createUserInfo({
    required String authUid,
    required String shotId,
    bool isMailAddressPublic,
  });

  Future<Result<ShotUser>> fetchOnePersonUserInfo({
    required String authUid,
  });

  Future<Result<ShotUser>> fetchThreePersonUserInfo({
    required String shotId,
  });
}
