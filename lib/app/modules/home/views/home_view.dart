import 'package:flutter/material.dart';
import 'package:food/app/data/food.dart';
import 'package:food/app/modules/home/views/food_detalis.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body:  ListView.builder(
        itemCount: Food.foods.length,
        itemBuilder: (context, index) {
          return Padding(padding: EdgeInsets.all(10),
          child: InkWell(
            onTap: () {
              Get.to(()=>FoodDetalis(food:Food.foods[index]));
            },
            child: Column(
              children: [
                Image.asset(Food.foods[index].image),
                Text(Food.foods[index].name)
              ],
            ),
          ),
          );
          
        },

      ),
    
    );
  }
}
