import 'package:hola/models/controllers/home/home_page_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePageController extends StateNotifier<HomePageState> {
  HomePageController() : super(HomePageState(counter: 0, isChecked: false));

  void increment() {
    state = state.increased();
  }

  void switchCheck(bool isCheckedNow) {
    state = state.check(isCheckedNow);
  }
}
