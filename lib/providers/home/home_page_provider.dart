import 'package:shot_client/models/controllers/home/home_page_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shot_client/models/controllers/home/home_page_state.dart';

final homePageProvider = StateNotifierProvider<HomePageController, HomePageState>((ref) => HomePageController());
