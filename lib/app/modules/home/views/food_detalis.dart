import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food/app/data/models/food_model.dart';
import 'package:food/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class FoodDetalis  extends GetView<HomeController>{
  final FoodModel food;
  const FoodDetalis ({required this.food,super.key});
 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(food.name),),
      body: Padding(padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(food.name),
          Image.asset(food.image),
          Text(food.description),],),
      ),

    );
  }

}