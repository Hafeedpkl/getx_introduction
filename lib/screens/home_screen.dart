import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/counter_controller.dart';
import 'package:getx_demo/screens/SecondScreen.dart';
import 'package:getx_demo/screens/third_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'The counter value is :',
              style: TextStyle(color: Colors.orange, fontSize: 20),
            ),
            Obx(() => Text(
                  '${controller.count}',
                  style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => controller.increment(),
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => controller.reset(),
                  child: Text('reset'),
                ),
                ElevatedButton(
                  onPressed: () => controller.decrement(),
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () => Get.showSnackbar(GetSnackBar(
                          title: "Getx SnackBar",
                          message: 'This is Getx SnackBar',
                          duration: Duration(seconds: 2),
                          backgroundColor: Colors.orange.shade200,
                          barBlur: 5,
                        )),
                    child: Text('snackbar')),
                ElevatedButton(
                    onPressed: () => Get.defaultDialog(
                        title: 'GetX Alert',
                        middleText: 'this is a GetX Alert Dialogue Demo',
                    textCancel: "CANCEL",
                    cancelTextColor: Colors.deepOrange,),
                    child: Text('Alert')),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                   // Get.to(()=>const SecondScreen());
                  Get.toNamed("/secondScreen");
                },
                
                child: Text('Second Screen')),

          ],
        ),
      ),
    );
  }

  final controller = Get.put(CounterController());
}
