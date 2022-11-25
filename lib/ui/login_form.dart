import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:game_shop/ui/widgets/signUp/getx_signUp_view.dart';

// import '../../../components/already_have_an_account_acheck.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            onSaved: (email) {},
          )
        ],
      ),
    );
  }
}
