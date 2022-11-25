import 'package:flutter/material.dart';

// import '../../../components/already_have_an_account_acheck.dart';
// import '../../../constants.dart';
import 'package:game_shop/ui/widgets/login/getx_login_view.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
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
            // cursorColor: kPrimaryColor,
            onSaved: (email) {},
            decoration: InputDecoration(
              hintText: "Your email",
              // prefixIcon: Padding(
              //   padding: const EdgeInsets.all(defaultPadding),
              //   child: Icon(Icons.person),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
