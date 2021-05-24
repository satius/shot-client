import 'package:hooks_riverpod/all.dart';
import 'package:shot_client/models/common/app_error.dart';
import 'package:shot_client/models/controllers/redirect/redirect_page_state.dart';
import 'package:shot_client/models/repositories/auth_repository.dart';
import 'package:shot_client/models/repositories/user_repository.dart';
import 'package:shot_client/route.dart';

// TODO StateNotifier必要性を精査
class RedirectPageController extends StateNotifier<RedirectPageState> {
  RedirectPageController(
    this._authRepository,
    this._userRepository,
  ) : super(RedirectPageState());

  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  Future<String> createRouteNameFinalized(String destinationRouteName) async {
    switch (destinationRouteName) {
      case RouteGenerator.homePage:
      case RouteGenerator.signInPage:
        final onePersonUserPageRoute = await createOnePersonUserPageRouteName();
        if (onePersonUserPageRoute != null) {
          return onePersonUserPageRoute;
        } else {
          return RouteGenerator.signInPage;
        }

      case RouteGenerator.signUpPage:
        final onePersonUserPageRoute = await createOnePersonUserPageRouteName();
        if (onePersonUserPageRoute != null) {
          return onePersonUserPageRoute;
        } else {
          return RouteGenerator.signUpPage;
        }

      case RouteGenerator.setUpPage:
        if (await _isSetUpPageAvailable()) {
          return RouteGenerator.setUpPage;
        } else {
          final onePersonUserPageRoute = await createOnePersonUserPageRouteName();
          if (onePersonUserPageRoute != null) {
            return onePersonUserPageRoute;
          } else {
            return RouteGenerator.signInPage;
          }
        }

      default:
        return createDefaultPageRouteName(destinationRouteName);
    }
  }

  Future<bool> _isSetUpPageAvailable() async {
    final authUid = _authRepository.getCurrentUserAuthUid();
    if (authUid == null) return false;
    final fetchUserInfoResult = await _userRepository.fetchOnePersonUserInfo(authUid: authUid);
    return fetchUserInfoResult.when(success: (shotUser) {
      return false;
    }, failure: (e) {
      return e.type == AppErrorType.notFound;
    });
  }

  bool isAuthorized() => _authRepository.getCurrentUserAuthUid() != null;

  Future<String?> createOnePersonUserPageRouteName() async {
    final authUid = _authRepository.getCurrentUserAuthUid();
    if (authUid == null) return null;
    final fetchUserInfoResult = await _userRepository.fetchOnePersonUserInfo(authUid: authUid);
    return fetchUserInfoResult.when(success: (shotUser) {
      return shotUser.shotId;
    }, failure: (e) {
      return null;
    });
  }

// TODO: 文字列操作でパスを抽出
  Future<String> createDefaultPageRouteName(String destinationRouteName) async {
    return "createDefaultPageRouteName";
  }
}
