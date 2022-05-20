import 'package:bloc/bloc.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  void selectSeat(String id) {
    if (isSelected(id)) {
      state.add(id);
    } else {
      state.remove(id);
    }
    // print(id);
    emit(List.from(state));
  }

  bool isSelected(String id) {
    int index = state.indexOf(id);
    // print("Selected : " + index.toString());
    if (index == -1) {
      return true;
    } else {
      return false;
    }
  }
}
