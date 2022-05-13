import 'package:flutter/material.dart';
import 'package:flutter_airplane/ui/pages/bonus_page.dart';
import 'package:flutter_airplane/ui/pages/detail_page.dart';
import 'package:flutter_airplane/ui/pages/get_started.dart';
import 'package:flutter_airplane/ui/pages/main_page.dart';
import 'package:flutter_airplane/ui/pages/splash_page.dart';
import 'package:flutter_airplane/ui/pages/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/get-started': (context) => const GetStarted(),
        '/sign-up': (context) => const SignUpPage(),
        '/bonus': (context) => const BonusPage(),
        '/main': (context) => const MainPage(),
        '/detail': (context) => const DetailPage(),
      },
    );
  }
}
