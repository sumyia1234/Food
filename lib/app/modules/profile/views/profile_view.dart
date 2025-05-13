import 'package:flutter/material.dart';
import 'package:food/app/modules/Auth/controllers/auth_controller.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  ProfileView({super.key});
  final AuthController authController=Get.find();
 final GetStorage storage=GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileView'),
        centerTitle: true,
      ),
      body:Center(
        child: Text(
          'hello ${storage.read('username')}',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
