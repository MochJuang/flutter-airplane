import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    Key? key,
    required this.name,
    this.visible = false,
    required this.controller,
  }) : super(key: key);

  final String name;
  final TextEditingController controller;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: blackTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            controller: controller,
            obscureText: visible,
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              hintText: "Your " + name,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: const BorderSide(color: kPrimaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
