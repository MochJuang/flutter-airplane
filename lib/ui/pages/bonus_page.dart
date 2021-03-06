import 'package:flutter/material.dart';
import 'package:flutter_airplane/cubit/auth_cubit.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              width: 300,
              height: 211,
              padding: const EdgeInsets.all(defaultMargin),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/image_card.png"),
                ),
                boxShadow: [
                  BoxShadow(
                    color: kPrimaryColor.withOpacity(0.5),
                    blurRadius: 50,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name",
                              style: whiteTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: light,
                              ),
                            ),
                            Text(
                              state.user.name,
                              style: whiteTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: medium,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 24,
                        height: 24,
                        margin: const EdgeInsets.only(right: 6),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/icon_logo.png"),
                          ),
                        ),
                      ),
                      Text(
                        "Pay",
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 41),
                  Text(
                    "Balance",
                    style: whiteTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "IDR. 28.0000.000",
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 26,
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Center(
              child: Text(
                "Ops, Something happens please contact developer",
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 26,
                ),
              ),
            );
          }
        },
      );
    }

    Widget title() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 80),
        child: Text(
          "Big Bonus ????",
          style: blackTextStyle.copyWith(
            fontWeight: semibold,
            fontSize: 32,
          ),
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Text(
          "We give you early credit so that\nyou can buy a flight ticket",
          style: grayTextStyle.copyWith(
            fontWeight: light,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget startbutton() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        width: 220,
        height: 50,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, "/main", (route) => false);
          },
          style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              )),
          child: Text(
            "Start Fly Now",
            style: whiteTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 18,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            title(),
            subtitle(),
            startbutton(),
          ],
        ),
      ),
    );
  }
}
