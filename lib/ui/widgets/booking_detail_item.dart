import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';

class BookingDetailItem extends StatelessWidget {
  const BookingDetailItem({
    Key? key,
    required this.title,
    required this.value,
    required this.color,
  }) : super(key: key);

  final String title;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Container(
            width: 16,
            margin: const EdgeInsets.only(right: 6),
            height: 16,
            decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/check_icon.png")),
            ),
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: regular,
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              color: color,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
