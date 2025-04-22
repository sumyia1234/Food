
import 'package:food/app/routes/app_pages.dart';
import 'package:get/get.dart';

class AnimSplashController extends GetxController {
  //TODO: Implement AnimSplashController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
     super.onReady();
      Future.delayed(Duration(seconds: 3), (){
      Get.offAllNamed(Routes.HOME);
    });
  
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
