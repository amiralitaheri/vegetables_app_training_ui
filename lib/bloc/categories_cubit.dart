import 'package:bloc/bloc.dart';
import 'package:vegetables_app_training_ui/data/category.dart';

class CategoriesCubit extends Cubit<List<Category>> {
  CategoriesCubit()
      : super([
          Category('Vegtables'),
          Category('Fruits'),
          Category('Foods'),
          Category('Milk'),
          Category('Bakery')
        ]);

  void change(List<Category> categories) => emit(categories);
}
