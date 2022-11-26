import 'package:flutter/material.dart';
import 'package:game_shop/ui/widgets/home/getx_game_view.dart';
import 'package:get/get.dart';

import 'package:game_shop/ui/widgets/signup/getx_signup_view.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(50.0),
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              onSaved: (email) {},
              decoration: const InputDecoration(hintText: "Your email"),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
            ),
            TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              decoration: const InputDecoration(hintText: "Your password"),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GetxGameView()),
                );
              },
              child: Text("Log in".toUpperCase()),
            ),
          ],
        ),
      ),
    );
  }
}
