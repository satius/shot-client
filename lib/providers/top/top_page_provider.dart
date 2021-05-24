import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shot_client/models/controllers/top/top_page_controller.dart';
import 'package:shot_client/models/controllers/top/top_page_state.dart';
import 'package:shot_client/providers/ripositories/auth_ripository_provider.dart';
import 'package:shot_client/providers/ripositories/user_ripository_provider.dart';

final topPageProvider = StateNotifierProvider<TopPageController, TopPageState>(
    (ref) => TopPageController(
          ref.read(authRepositoryProvider),
          ref.read(userRepositoryProvider),
        ));
