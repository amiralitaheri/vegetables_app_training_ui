import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegetables_app_training_ui/bloc/categories_cubit.dart';
import 'package:vegetables_app_training_ui/bloc/selected_category_cubit.dart';
import 'package:vegetables_app_training_ui/components/category_card.dart';
import 'package:vegetables_app_training_ui/data/category.dart';
import 'package:vegetables_app_training_ui/utils/extentions.dart';

class CategoryCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<CategoriesCubit, List<Category>>(
        builder: (context, categories) =>
            BlocBuilder<SelectedCategoryCubit, int>(
          builder: (context, selectedCategoryIndex) => SizedBox(
              height: 200,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ListView(
                      scrollDirection: Axis.horizontal,
                children: categories
                    .mapIndexed((int index, Category category) => CategoryCard(
                          name: category.name,
                          isSelected: index == selectedCategoryIndex,
                          index: index,
                        ))
                    .toList(),
              ),
            ),
          ),
        ),
      );
}
