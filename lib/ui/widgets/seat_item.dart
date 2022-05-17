import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';

class SeatItem extends StatelessWidget {
  const SeatItem({Key? key, required this.status}) : super(key: key);
  // 0. available 1. selected 2.unavailable
  final int status;

  Color selectBackground(int status) {
    switch (status) {
      case 0:
        return kAvailableColor;
      case 1:
        return kSelectedColor;
      case 2:
        return kUnavailableColor;
      default:
        return kUnavailableColor;
    }
  }

  Color selectBorder(int status) {
    switch (status) {
      case 0:
        return kPrimaryColor;
      case 1:
        return kPrimaryColor;
      case 2:
        return kUnavailableColor;
      default:
        return kUnavailableColor;
    }
  }
  Widget selectChild(int status) {
    switch (status) {
      case 0:
        return const SizedBox();
      case 1:
        return Center(
          child: Text(
            "YOU ",
            style: whiteTextStyle.copyWith(fontSize: 14, fontWeight: semibold),
          ),
        );
      case 2:
        return const SizedBox();
      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: selectBackground(status),
        border: Border.all(
          color: selectBorder(status),
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: selectChild(status),
    );
  }
}
