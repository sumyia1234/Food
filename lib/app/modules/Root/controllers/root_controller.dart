import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food/app/modules/home/views/home_view.dart';
import 'package:food/app/modules/profile/views/profile_view.dart';
import 'package:get/get.dart';

class RootController extends GetxController {
  //TODO: Implement RootController

  final RxInt _selectedIndex = 0.obs;

  //to make it easier when call this variable whithout using .value 
  int get selectedIndex => _selectedIndex.value;

  void onTap(int index) {
    _selectedIndex.value = index;
  }

  final screens =[
    HomeView(),
    ProfileView()
  ];

  final List<IconData> listOfIcons = [
    Icons.home_mini_outlined,
    Icons.person_2_outlined
  ];

  final listOfLables = [
    'Home',
    'Profile'
  ];
 

}
