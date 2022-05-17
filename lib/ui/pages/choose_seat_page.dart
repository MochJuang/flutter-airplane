// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/widgets/custom_button.dart';
import 'package:flutter_airplane/ui/widgets/seat_item.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Text(
          "Select Your\nFavorite Seat",
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semibold,
          ),
        ),
      );
    }

    Widget status() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Container(
              width: 16,
              height: 16,
              margin: const EdgeInsets.only(right: 6),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icon_available.png"),
                ),
              ),
            ),
            Text(
              "Available",
              style: blackTextStyle.copyWith(
                fontWeight: regular,
              ),
            ),
            Container(
              width: 16,
              height: 16,
              margin: const EdgeInsets.only(left: 6, right: 6),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icon_selected.png"),
                ),
              ),
            ),
            Text(
              "Selected",
              style: blackTextStyle.copyWith(
                fontWeight: regular,
              ),
            ),
            Container(
              width: 16,
              height: 16,
              margin: const EdgeInsets.only(left: 6, right: 6),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icon_unavailable.png"),
                ),
              ),
            ),
            Text(
              "Unavailable",
              style: blackTextStyle.copyWith(
                fontWeight: regular,
              ),
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            //Seaet Indicators
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "A",
                      style: grayTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "B",
                      style: grayTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "",
                      style: grayTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "C",
                      style: grayTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "D",
                      style: grayTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),

            // Seat 1
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(status: 2),
                  const SeatItem(status: 2),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "1 ",
                        style: grayTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  const SeatItem(status: 0),
                  const SeatItem(status: 2),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(status: 0),
                  const SeatItem(status: 0),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "2",
                        style: grayTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  const SeatItem(status: 0),
                  const SeatItem(status: 2),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(status: 1),
                  const SeatItem(status: 1),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "3",
                        style: grayTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  const SeatItem(status: 2),
                  const SeatItem(status: 2),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(status: 0),
                  const SeatItem(status: 2),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "4 ",
                        style: grayTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  const SeatItem(status: 0),
                  const SeatItem(status: 0),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(status: 0),
                  const SeatItem(status: 0),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "5 ",
                        style: grayTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  const SeatItem(status: 2),
                  const SeatItem(status: 0),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Your Seat",
                          style: grayTextStyle.copyWith(fontWeight: light),
                        ),
                      ),
                      Text(
                        "A3, B3",
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Total",
                          style: grayTextStyle.copyWith(fontWeight: light),
                        ),
                      ),
                      Text(
                        "IDR 540.000.000",
                        style: purpleTextStyle.copyWith(
                          fontWeight: semibold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          title(),
          status(),
          selectSeat(),
          Container(
            margin: const EdgeInsets.only(top: 30, bottom: 46),
            child: CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, '/checkout');
              },
              text: "Continue to Checkout",
            ),
          ),
        ],
      ),
    );
  }
}
