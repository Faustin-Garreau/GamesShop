import 'package:game_shop/ui/widgets/home/getx_game_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxGameView extends GetView<GetxGameController> {
  const GetxGameView({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Accueil';

    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              "Bienvenue au Flutter Store !",
              style: TextStyle(fontSize: 35),
            ),
            const Text(
              "Liste de produits :",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
