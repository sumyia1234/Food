import 'package:get/get.dart';

import '../modules/Root/bindings/root_binding.dart';
import '../modules/Root/views/root_view.dart';
import '../modules/anim_splash/bindings/anim_splash_binding.dart';
import '../modules/anim_splash/views/anim_splash_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ANIM_SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ANIM_SPLASH,
      page: () => AnimSplashView(),
      binding: AnimSplashBinding(),
    ),
    GetPage(
      name: _Paths.ROOT,
      page: () => const RootsView(),
      binding: RootBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
