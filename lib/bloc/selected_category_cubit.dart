import 'package:bloc/bloc.dart';

class SelectedCategoryCubit extends Cubit<int> {
  SelectedCategoryCubit() : super(0);

  void change(int index) => emit(index);
}
