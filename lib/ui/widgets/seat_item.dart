import 'package:flutter/material.dart';
import 'package:flutter_airplane/cubit/seat_cubit.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatItem extends StatelessWidget {
  const SeatItem({Key? key, this.isAvailable = true, required this.id})
      : super(key: key);
  // 0. available 1. selected 2.unavailable
  final bool isAvailable;
  final String id;

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.read<SeatCubit>().isSelected(id);

    Color selectBackground(bool isSelected) {
      if (isAvailable) {
        if (!isSelected) {
          return kPrimaryColor;
        } else {
          return kAvailableColor;
        }
      } else {
        return kUnavailableColor;
      }
    }

    Color selectBorder(bool isSelected) {
      if (isAvailable) {
        return kPrimaryColor;
      } else {
        return kUnavailableColor;
      }
    }

    Widget selectChild(bool isSelected) {
      if (!isSelected) {
        return Center(
          child: Text(
            "YOU ",
            style: whiteTextStyle.copyWith(fontSize: 14, fontWeight: semibold),
          ),
        );
      } else {
        return const SizedBox();
      }
    }

    return BlocBuilder<SeatCubit, List<String>>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            if (isAvailable) {
              context.read<SeatCubit>().selectSeat(id);
            }
            isSelected = state.indexOf(id) == -1 ? true : false;
          },
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: selectBackground(isSelected),
              border: Border.all(
                color: selectBorder(isSelected),
              ),
              borderRadius: BorderRadius.circular(18),
            ),
            child: selectChild(isSelected),
          ),
        );
      },
    );
  }
}
