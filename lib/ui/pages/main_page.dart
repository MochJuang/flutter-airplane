import 'package:flutter/material.dart';
import 'package:flutter_airplane/cubit/page_cubit.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/pages/home_page.dart';
import 'package:flutter_airplane/ui/pages/setting_page.dart';
import 'package:flutter_airplane/ui/pages/transaction_page.dart';
import 'package:flutter_airplane/ui/pages/wallet_page.dart';
import 'package:flutter_airplane/ui/widgets/button_navigation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: const EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const ButtonNavigation(
                index: 0,
                image: "fi_globe_2.png",
              ),
              const ButtonNavigation(
                index: 1,
                image: "fi_book-open.png",
              ),
              const ButtonNavigation(
                index: 2,
                image: "fi_credit-card.png",
              ),
              const ButtonNavigation(
                index: 3,
                image: "fi_settings.png",
              ),
            ],
          ),
        ),
      );
    }


    Widget buildContent(int currentIndex) {
      Widget page;
      
      switch (currentIndex) {
        case 0:
          page = const HomePage(); break;
        case 1:
          page = const TransactionPage(); break;
        case 2:
          page = const WalletPage(); break;
        case 3:
          page = const SettingPage(); break;
        default:
          page = const HomePage(); break;
      }

      return page;
    }

      return BlocBuilder<PageCubit, int>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: kBgColor,
            body: Stack(
              children: [
                buildContent(state),
                customBottomNavigation(),
              ],
            ),
          );
        },
      );
  }
}
