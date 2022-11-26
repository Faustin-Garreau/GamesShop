import 'package:flutter/material.dart';

import 'package:game_shop/ui/signup_form.dart';

class GetxSignupView extends StatelessWidget {
  const GetxSignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 450,
                    child: SignUpForm(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
