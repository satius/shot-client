import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shot_client/models/controllers/setUp/set_up_page_controller.dart';
import 'package:shot_client/models/controllers/setUp/set_up_page_state.dart';
import 'package:shot_client/providers/ripositories/auth_ripository_provider.dart';
import 'package:shot_client/providers/ripositories/user_ripository_provider.dart';

final setUpPageProvider = StateNotifierProvider<SetUpPageController, SetUpPageState>((ref) => SetUpPageController(
      ref.read(userRepositoryProvider),
      ref.read(authRepositoryProvider),
    ));
