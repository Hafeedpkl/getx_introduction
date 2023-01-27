import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/screens/home_screen.dart';
import 'package:getx_demo/screens/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Second Screen'),
            ElevatedButton(
                onPressed: () => Get.back(),
                child: Text("First Screen")),
            ElevatedButton(
                onPressed: () {
                  // Get.to(()=>const ThirdScreen());
                  Get.toNamed("/thirdScreen");
                },
                child: Text('Third Screen')),
          ],
        ),
      ),
    );
  }
}
