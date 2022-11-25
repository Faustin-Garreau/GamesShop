import 'package:flutter/material.dart';
import 'package:game_shop/ui/widgets/home/getx_game_view.dart';
import 'package:game_shop/ui/widgets/home/getx_game_bindings.dart';
import 'package:game_shop/ui/widgets/login/getx_login_bindings.dart';
import 'package:game_shop/ui/widgets/login/getx_login_view.dart';
import 'package:game_shop/ui/widgets/signup/getx_signup_bindings.dart';
import 'package:game_shop/ui/widgets/signup/getx_signup_view.dart';
import 'package:get/get.dart';

// julien.mangeat@mail-formateur.net

// firebase

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

/// Requires that a Firebase local emulator is running locally.
/// See https://firebase.flutter.dev/docs/auth/start/#optional-prototype-and-test-with-firebase-local-emulator-suite
bool shouldUseFirebaseEmulator = false;

// Requires that the Firebase Auth emulator is running locally
// e.g via `melos run firebase:emulator`.
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // We're using the manual installation on non-web platforms since Google sign in plugin doesn't yet support Dart initialization.
  // See related issue: https://github.com/flutter/flutter/issues/96391
  if (!kIsWeb) {
    await Firebase.initializeApp();
  } else {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: 'AIzaSyBvgJ2aAD8gV2i3XgQNLGg9cXsf3sD0mZ0',
            appId: '574092904095',
            messagingSenderId: '',
            projectId: 'gameshop-83c81'));
  }

  if (shouldUseFirebaseEmulator) {
    await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  }

  runApp(const MyApp());
}

/// The entry point of the application.
///
/// Returns a [MaterialApp]

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
        ),
        GetPage(
          name: "/login",
          page: () => const GetxLoginView(),
          binding: GetxLoginBindings(),
        ),
        GetPage(
          name: "/signup",
          page: () => const GetxSignupView(),
          binding: GetxSignupBindings(),
        )
      ],
      initialRoute: "/home",
    );
  }
}
