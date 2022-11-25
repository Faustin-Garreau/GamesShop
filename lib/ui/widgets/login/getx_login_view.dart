import 'package:flutter/material.dart';

import 'package:game_shop/ui/login_form.dart';
import 'package:game_shop/ui/widgets/login/getx_login_controller.dart';
import 'package:get/get.dart';

class GetxLoginView extends GetView<GetxLoginController> {
  const GetxLoginView({super.key});

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
                    child: LoginForm(),
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
