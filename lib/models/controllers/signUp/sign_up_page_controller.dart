import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shot_client/models/common/app_error.dart';
import 'package:shot_client/models/common/result.dart';
import 'package:shot_client/models/controllers/signUp/sign_up_page_state.dart';
import 'package:shot_client/models/repositories/auth_repository.dart';

class SignUpPageController extends StateNotifier<SignUpPageState> {
  SignUpPageController(
    this._authRepository,
  ) : super(SignUpPageState(
          isLoading: false,
          formState: GlobalKey<FormState>(),
        ));

  final AuthRepository _authRepository;

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

  Future<Result<String>> signUp() async {
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

      return _authRepository.signUp(
        email: state.email!,
        password: state.password!,
      );
    }
  }
}
