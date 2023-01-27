import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getx_demo/controller/counter_controller.dart';
import 'package:getx_demo/screens/SecondScreen.dart';

class ThirdScreen extends StatelessWidget {
   ThirdScreen({Key? key}) : super(key: key);
final CounterController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text ("Third Screen"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
          Text("Counte Value from 1st screen"),
          Text("${controller.count}",  style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange),
          ),
          ElevatedButton(
              onPressed: () => 
                  // Get.off(()=>SecondScreen()),//third screen will be off when while the button clicked
    // onPressed: () => Get.offAll(()=>SecondScreen()),//all screen are off and it clear all screens 
          Get.offNamed('/secondScreen'),
              child: Text('Second')),

        ],),
      ),
    );
  }
}
