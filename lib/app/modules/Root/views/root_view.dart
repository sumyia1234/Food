import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/root_controller.dart';

class RootView extends GetView<RootController> {
  const RootView({super.key});
  @override
  Widget build(BuildContext context) {

    // size holds the phone screen size which runs the app
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex]),
      bottomNavigationBar: Obx(() => Container(

        height: size.height * .080,
        decoration: BoxDecoration(color: Colors.white),
        // we will design it to generate it automatically when add the page, lable and icon
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(controller.listOfIcons.length,
           (index) {
            final isSelected = controller.selectedIndex == index; // returns true or false, optional for orgnizing code
            return InkWell(
              onTap: () => controller.onTap(index),
              borderRadius: BorderRadius.circular(30),
              child: AnimatedContainer(
                duration: Duration(milliseconds:300),
                padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.012,
                  horizontal: isSelected ? size.width * 0.045 : 0,
                ),
                decoration: BoxDecoration (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: isSelected ? Border.all(color: Colors.blue, width: 1.5) : null,
                ),
                child: Row (
                  children: [
                    Icon (
                      controller.listOfIcons[index],
                      size: size.width * 0.065,
                      color: isSelected ? Colors.blue : Colors.grey
                    ), 
                    if (isSelected) 
                      SizedBox (width: size.width * 0.20),
                    if (isSelected)
                      Text (
                        controller.listOfLables[index],
                        style: TextStyle (
                          color: Colors.blue,
                          fontSize: size.width * 0.035,
                          fontWeight: FontWeight.w600
                        )
                      )
                  ]
                )
              )
            );
           }),
        ),
      )),
    );
  }
}
