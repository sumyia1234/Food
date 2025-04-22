import 'package:flutter/material.dart';
import 'package:food/app/modules/Root/controllers/root_controller.dart';
import 'package:get/get.dart';


class RootsView extends GetView<RootsController> {
  const RootsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RootsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RootsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
