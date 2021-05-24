import 'package:shot_client/models/common/result.dart';

abstract class AuthRepository {
  Future<Result<String>> signUp({
    required String email,
    required String password,
  });

  Future<Result<String>> signIn({
    required String email,
    required String password,
  });

  Future<Result<void>> signOut();

  String? getCurrentUserAuthUid();
}
