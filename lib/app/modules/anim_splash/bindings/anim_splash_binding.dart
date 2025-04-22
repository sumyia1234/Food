import 'package:get/get.dart';

import '../controllers/anim_splash_controller.dart';

class AnimSplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimSplashController>(
      () => AnimSplashController(),
    );
  }
}
