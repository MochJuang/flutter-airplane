import 'package:flutter/cupertino.dart';
import 'package:flutter_airplane/cubit/page_cubit.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonNavigation extends StatelessWidget {
  const ButtonNavigation({
    Key? key,
    required this.image,
    required this.index,
  }) : super(key: key);

  final int index;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: BlocBuilder<PageCubit, int>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Image.asset(
                "assets/" + image,
                width: 24,
                height: 24,
                color: state == index
                    ? kPrimaryColor
                    : kGrayColor,
              ),
              Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                  color: state == index
                      ? kPrimaryColor
                      : kTransparantColor,
                  borderRadius: BorderRadius.circular(18),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
