import 'package:flutter/material.dart';
import 'package:game_shop/ui/game_item.dart';
import 'package:game_shop/ui/widgets/login/getx_login_view.dart';
import 'package:game_shop/ui/widgets/signup/getx_signup_view.dart';
import 'package:get/get.dart';
import 'package:game_shop/ui/widgets/home/getx_game_controller.dart';

// firebase

import 'package:firebase_auth/firebase_auth.dart';

var username = "";

Future<void> main() async {
  FirebaseAuth auth = FirebaseAuth.instance;
  username = auth.currentUser!.uid;

  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user != null) {
      print('Logged in !');
    }
  });
}

class GetxGameView extends GetView<GetxGameController> {
  const GetxGameView({super.key});

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
                                return GetxGameView();
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
                Text('Bonjour, ' + username.toString() + '!'),
                SizedBox(
                  width: screenSize.width / 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GetxLoginView()),
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
                      MaterialPageRoute(builder: (context) => GetxSignupView()),
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
            const Text(
              "Bienvenue à Game Shop !",
              style: TextStyle(fontSize: 35),
            ),
            const Text(
              "Liste de jeux :",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const GameItem()
          ],
        ),
      ),
    );
  }
}
