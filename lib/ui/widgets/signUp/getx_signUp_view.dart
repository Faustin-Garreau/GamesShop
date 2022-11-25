import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:game_shop/ui/signup_form.dart';

class GetxSignUpView extends StatelessWidget {
  const GetxSignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
