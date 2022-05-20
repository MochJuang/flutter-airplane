// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_airplane/cubit/seat_cubit.dart';
import 'package:flutter_airplane/models/destination_model.dart';
import 'package:flutter_airplane/models/transaction_model.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/pages/checkout_page.dart';
import 'package:flutter_airplane/ui/widgets/custom_button.dart';
import 'package:flutter_airplane/ui/widgets/seat_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key, required this.destination}) : super(key: key);
  final DestinationModel destination;

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
                  const SeatItem(
                    isAvailable: true,
                    id: "A1",
                  ),
                  const SeatItem(
                    isAvailable: true,
                    id: "B1",
                  ),
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
                  const SeatItem(
                    isAvailable: true,
                    id: "C1",
                  ),
                  const SeatItem(
                    isAvailable: true,
                    id: "D1",
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(
                    isAvailable: true,
                    id: "A2",
                  ),
                  const SeatItem(
                    isAvailable: true,
                    id: "B2",
                  ),
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
                  const SeatItem(
                    isAvailable: true,
                    id: "C2",
                  ),
                  const SeatItem(
                    isAvailable: true,
                    id: "D2",
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(
                    isAvailable: true,
                    id: "A3",
                  ),
                  const SeatItem(
                    isAvailable: true,
                    id: "B3",
                  ),
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
                  const SeatItem(
                    isAvailable: false,
                    id: "C3",
                  ),
                  const SeatItem(
                    isAvailable: true,
                    id: "D3",
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(
                    isAvailable: true,
                    id: "A4",
                  ),
                  const SeatItem(
                    isAvailable: true,
                    id: "B4",
                  ),
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
                  const SeatItem(
                    isAvailable: true,
                    id: "C4",
                  ),
                  const SeatItem(
                    isAvailable: true,
                    id: "D4",
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(
                    isAvailable: true,
                    id: "A5",
                  ),
                  const SeatItem(
                    isAvailable: false,
                    id: "B5",
                  ),
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
                  const SeatItem(
                    isAvailable: false,
                    id: "C5",
                  ),
                  const SeatItem(
                    isAvailable: true,
                    id: "D5",
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  BlocBuilder<SeatCubit, List<String>>(
                    builder: (context, state) {
                      return Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Your Seat",
                              style: grayTextStyle.copyWith(fontWeight: light),
                            ),
                          ),
                          Text(
                            state.join(", "),
                            style: blackTextStyle.copyWith(
                              fontWeight: medium,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  BlocBuilder<SeatCubit, List<String>>(
                    builder: (context, state) {
                      return Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Total",
                              style: grayTextStyle.copyWith(fontWeight: light),
                            ),
                          ),
                          Text(
                            NumberFormat.currency(
                              locale: "id",
                              decimalDigits: 0,
                              symbol: "IDR. ",
                            ).format(state.length * destination.price),
                            style: purpleTextStyle.copyWith(
                              fontWeight: semibold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      );
                    },
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
          BlocBuilder<SeatCubit, List<String>>(
            builder: (context, state) {
              return Container(
                margin: const EdgeInsets.only(top: 30, bottom: 46),
                child: CustomButton(
                  onPressed: () {
                    int price = destination.price * state.length;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckoutPage(
                          transaction: TransactionModel(
                            destination: destination,
                            amountOfTraveler: state.length,
                            selectedSeat: state.join(", "),
                            insurance: true,
                            refundable: false,
                            price: price,
                            vat: 0.45,
                            grandTotal: price + (price * 0.45).toInt(),
                          ),
                        ),
                      ),
                    );
                  },
                  text: "Continue to Checkout",
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
