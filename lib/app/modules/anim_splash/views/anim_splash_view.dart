
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart'; // ← أضف هذا السطر
import '../controllers/anim_splash_controller.dart';

class AnimSplashView extends GetView<AnimSplashController> {
  const AnimSplashView({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Lottie.asset(
          'assets/animation/splash_animation.json',
          width: 250,
          height: 250,
          fit: BoxFit.contain,
        ),
      ),
    );
    

    
  }
}
