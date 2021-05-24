import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shot_client/models/common/app_error.dart';
import 'package:shot_client/models/common/result.dart';
import 'package:shot_client/models/controllers/setUp/set_up_page_state.dart';
import 'package:shot_client/models/entities/shot_user.dart';
import 'package:shot_client/models/repositories/auth_repository.dart';
import 'package:shot_client/models/repositories/user_repository.dart';

class SetUpPageController extends StateNotifier<SetUpPageState> {
  SetUpPageController(
    this._userRepository,
    this._authRepository,
  ) : super(SetUpPageState(
          isLoading: false,
          formState: GlobalKey<FormState>(),
          isMailAddressPublicChecked: false,
        ));

  final UserRepository _userRepository;
  final AuthRepository _authRepository;

  void loadingStart() {
    state = state.setLoading(true);
  }

  void loadingEnd() {
    state = state.setLoading(false);
  }

  void saveShotId(String? shotId) {
    state = state.setShotId(shotId);
  }

  Future<Result<ShotUser>> createShotUser({required String authUid}) async {
    // TODO: use isBlank by quiver
    if (state.shotId == null || state.shotId!.isEmpty) {
      return Result.failure(error: AppError(type: AppErrorType.front));
    } else {
      // TODO: デバッグモード判定 Utilへ移動
      var isDebug = false;
      assert(isDebug = true);
      if (isDebug) {
        await Future.delayed(Duration(seconds: 1));
      }

      final createUserInfoResult = await _userRepository.createUserInfo(
        authUid: authUid,
        shotId: state.shotId!,
      );

      return await createUserInfoResult.when(
        success: (_) async {
          final fetchUserInfoResult = await _userRepository.fetchOnePersonUserInfo(authUid: authUid);
          return fetchUserInfoResult.when(
            success: (shotUser) => (shotUser.shotId == state.shotId!)
                ? fetchUserInfoResult
                : Result.failure(
                    error: AppError(
                      type: AppErrorType.unknown,
                      message: "Unknown Error: Not match Shot-ID.",
                    ),
                  ),
            failure: (e2) => fetchUserInfoResult,
          );
        },
        failure: (e) => Result.failure(error: AppError(type: e.type, message: e.message)),
      );
    }
  }

  String? getCurrentUserAuthId() => _authRepository.getCurrentUserAuthUid();
}
