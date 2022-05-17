import 'package:flutter/material.dart';
import 'package:flutter_airplane/cubit/auth_cubit.dart';
import 'package:flutter_airplane/cubit/page_cubit.dart';
import 'package:flutter_airplane/ui/pages/bonus_page.dart';
import 'package:flutter_airplane/ui/pages/checkout_page.dart';
import 'package:flutter_airplane/ui/pages/choose_seat_page.dart';
import 'package:flutter_airplane/ui/pages/detail_page.dart';
import 'package:flutter_airplane/ui/pages/get_started.dart';
import 'package:flutter_airplane/ui/pages/main_page.dart';
import 'package:flutter_airplane/ui/pages/splash_page.dart';
import 'package:flutter_airplane/ui/pages/sign_up_page.dart';
import 'package:flutter_airplane/ui/pages/success_checkout_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/get-started': (context) => const GetStarted(),
          '/sign-up': (context) => SignUpPage(),
          '/bonus': (context) => const BonusPage(),
          '/main': (context) => const MainPage(),
          '/detail': (context) => const DetailPage(),
          '/checkout': (context) => const CheckoutPage(),
          '/choose-page': (context) => const ChooseSeatPage(),
          '/success-checkout': (context) => const SuccessCheckoutPage(),
        },
      ),
    );
  }
}
