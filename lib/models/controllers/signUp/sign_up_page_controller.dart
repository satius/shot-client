import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shot_client/models/common/app_error.dart';
import 'package:shot_client/models/common/result.dart';
import 'package:shot_client/models/controllers/signUp/sign_up_page_state.dart';
import 'package:shot_client/models/repositories/auth_repository.dart';
import 'package:shot_client/models/repositories/user_repository.dart';

class SignUpPageController extends StateNotifier<SignUpPageState> {
  SignUpPageController(this._authRepository, this._userRepository)
      : super(SignUpPageState(
          isLoading: false,
          formState: GlobalKey<FormState>(),
        ));

  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  void loadingStart() {
    state = state.setLoading(true);
  }

  void loadingEnd() {
    state = state.setLoading(false);
  }

  void saveEmail(String? email) {
    state = state.setEmail(email);
  }

  void savePassword(String? password) {
    state = state.setPassword(password);
  }

  Future<Result<String>> signIn() async {
    // TODO: use isBlank by quiver
    if (state.email == null || state.password == null || state.email!.isEmpty || state.password!.isEmpty) {
      return Result.failure(error: AppError(type: AppErrorType.front));
    } else {
      // TODO: デバッグモード判定 Utilへ移動
      var isDebug = false;
      assert(isDebug = true);
      if (isDebug) {
        await Future.delayed(Duration(seconds: 3));
      }

      return _authRepository.signIn(
        email: state.email!,
        password: state.password!,
      );
    }
  }

  Future<Result<String?>> fetchOnpPersonUserId({
    required String authUid,
  }) async {
    var result = Result<String?>.failure(error: AppError(type: AppErrorType.unknown));
    final userInfoResult = await _userRepository.fetchOnePersonUserInfo(authUid: authUid);

    userInfoResult.when(
      success: (shotUser) {
        result = Result.success(data: shotUser.shotId);
      },
      failure: (e) {
        if (e.type == AppErrorType.notFound) {
          result = Result.success(data: null);
        } else {
          result = Result.failure(error: e);
        }
      },
    );

    return result;
  }
}
