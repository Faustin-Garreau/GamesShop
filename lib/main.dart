import 'package:game_shop/ui/widgets/home/getx_game_bindings.dart';
import 'package:game_shop/ui/widgets/home/getx_game_view.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Game Shop',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      color: Colors.black,
      initialBinding: GetxGameBindings(),
      getPages: [
        GetPage(
          name: "/home",
          page: () => const GetxGameView(),
          binding: GetxGameBindings(),
        )
      ],
      initialRoute: "/home",
    );
  }
}
