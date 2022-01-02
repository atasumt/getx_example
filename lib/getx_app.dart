import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/utilites/routes.dart';

class GetXApp extends StatelessWidget {
  const GetXApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Example Demo',
      theme: ThemeData(primaryColor: Colors.blue),
      initialRoute: '/',
      getPages: routes,
    );
  }
}
