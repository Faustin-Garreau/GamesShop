import 'package:flutter/material.dart';
import 'package:game_shop/ui/widgets/checkout/getx_checkout_controller.dart';
import 'package:game_shop/ui/widgets/login/getx_login_view.dart';
import 'package:game_shop/ui/widgets/signUp/getx_signUp_view.dart';
import 'package:get/get.dart';
import 'package:game_shop/ui/widgets/home/getx_game_controller.dart';

class GetxCheckoutView extends GetView<GetxCheckoutController> {
  const GetxCheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: Container(
          color: Colors.red,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                          size: 24.0,
                        ),
                        tooltip: 'Navigate to shopping page',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return GetxCheckoutView();
                              },
                            ),
                          );
                        },
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.shopping_basket,
                          color: Colors.white,
                          size: 24.0,
                        ),
                        tooltip: 'Navigate to check out page',
                        onPressed: () {
                          // setState(() {
                          // _volume += 1;
                          // });
                        },
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return GetxLoginView();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: screenSize.width / 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return GetxSignUpView();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Votre panier ;",
              style: TextStyle(fontSize: 35),
            ),
          ],
        ),
      ),
    );
  }
}
