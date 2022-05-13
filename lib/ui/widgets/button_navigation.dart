import 'package:flutter/cupertino.dart';
import 'package:flutter_airplane/shared/theme.dart';

class ButtonNavigation extends StatelessWidget {
  const ButtonNavigation({
    Key? key,
    required this.image,
    this.selected = false,
  }) : super(key: key);

  final bool selected;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/" + image),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: selected ? kPrimaryColor : kTransparantColor,
            borderRadius: BorderRadius.circular(18),
          ),
        )
      ],
    );
  }
}
