import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shot_client/models/controllers/signUp/sign_up_page_controller.dart';
import 'package:shot_client/models/controllers/signUp/sign_up_page_state.dart';
import 'package:shot_client/providers/ripositories/auth_ripository_provider.dart';

final signUpPageProvider = StateNotifierProvider<SignUpPageController, SignUpPageState>((ref) => SignUpPageController(
      ref.read(authRepositoryProvider),
    ));
