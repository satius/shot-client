import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shot_client/models/controllers/redirect/redirect_page_controller.dart';
import 'package:shot_client/models/controllers/redirect/redirect_page_state.dart';
import 'package:shot_client/providers/ripositories/auth_ripository_provider.dart';
import 'package:shot_client/providers/ripositories/user_ripository_provider.dart';

final redirectPageProvider =
    StateNotifierProvider<RedirectPageController, RedirectPageState>((ref) => RedirectPageController(
          ref.read(authRepositoryProvider),
          ref.read(userRepositoryProvider),
        ));
