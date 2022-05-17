import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';

class InterestItem extends StatelessWidget {
  const InterestItem({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(right: 4),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/check_icon.png"),
              ),
            ),
          ),
          Text(
            text,
            style: blackTextStyle.copyWith(
              fontWeight: regular,
            ),
          ),
        ],
      ),
    );
  }
}
