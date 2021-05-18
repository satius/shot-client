import 'package:hola/models/controllers/home/home_page_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homePageProvider = StateNotifierProvider((ref) => HomePageController());
