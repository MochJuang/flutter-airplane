import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/pages/home_page.dart';
import 'package:flutter_airplane/ui/widgets/button_navigation.dart';

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
                image: "fi_globe_2.png",
                selected: true,
              ),
              const ButtonNavigation(
                image: "fi_book-open.png",
                selected: false,
              ),
              const ButtonNavigation(
                image: "fi_credit-card.png",
                selected: false,
              ),
              const ButtonNavigation(
                image: "fi_settings.png",
                selected: false,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: Stack(
        children: [
          HomePage(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
