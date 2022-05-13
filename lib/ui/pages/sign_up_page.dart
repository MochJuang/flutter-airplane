import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/widgets/custom_input.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text("Join us and get\nyour next journey",
            style: blackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semibold,
            )),
      );
    }

    Widget inputSection() {
      Widget submitButton() {
        // ignore: sized_box_for_whitespace
        return Container(
          width: double.infinity,
          height: 55,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/bonus");
            },
            style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                )),
            child: Text(
              "Get Started",
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 18,
              ),
            ),
          ),
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            const CustomInput(name: "Full Name"),
            const CustomInput(name: "Email Address"),
            const CustomInput(name: "Password", visible: true),
            const CustomInput(name: "Hobby"),
            submitButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(
          top: 50,
          bottom: 73,
        ),
        child: Text(
          "Terms Of Conditions",
          style: grayTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
