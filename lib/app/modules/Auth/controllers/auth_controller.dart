import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food/app/data/models/usersmodel.dart';
import 'package:food/app/data/users.dart';
import 'package:food/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthController extends GetxController {
  //TODO: Implement AuthController
  final GetStorage _storage=GetStorage();
  final List<Usersmodel>users =Users.users;

  final count = 0.obs;

  get username => null;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;



  Future<void> login (String email, String password) async {
    try {
      final user = users.firstWhere(
        (u) => u.email == email && u.password == password
      );
      await _storage.write('email', user.email);
      await _storage.write('username', user.userName);
      Get.offAllNamed(Routes.ROOT);
    } catch (e) {
      Get.snackbar(
        'Error', 
        'Email or Password is incorrect!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white
      );
    }
  } 

}
