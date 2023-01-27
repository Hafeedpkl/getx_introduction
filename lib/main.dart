import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/screens/SecondScreen.dart';
import 'package:getx_demo/screens/home_screen.dart';
import 'package:getx_demo/screens/third_screen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
   debugShowCheckedModeBanner: false,
    // home: HomeScreen(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomeScreen(),),
        GetPage(name: '/secondScreen', page: () => SecondScreen(),),
        GetPage(name: '/thirdScreen', page: () => ThirdScreen(),)
      ],
);
  }
}
