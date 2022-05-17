import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/widgets/custom_button.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 300,
            margin: const EdgeInsets.only(bottom: 80),
            height: 150,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image_success.png"),
              ),
            ),
          ),
          Center(
            child: Text(
              "Well Booked 😍",
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semibold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Text(
              "Are you ready to explore the new\nworld of experiences?",
              style: grayTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            width: 220,
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, "/main", (route) => false);
            },
            text: "My Bookings",
          )
        ],
      ),
    );
  }
}
