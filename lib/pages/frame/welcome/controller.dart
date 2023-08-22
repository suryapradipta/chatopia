import 'package:chatopia/pages/frame/welcome/state.dart';
import 'package:get/get.dart';

import '../../../common/routes/names.dart';

class WelcomeController extends GetxController {
  WelcomeController();

  final title = "Chatopia .";

  // state class
  final state = WelcomeState();

  @override
  void onReady() {
    super.onReady();
    Future.delayed(
        const Duration(seconds: 3), () => Get.offAllNamed(AppRoutes.Message));
  }
}
