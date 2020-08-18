import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegetables_app_training_ui/bloc/categories_cubit.dart';
import 'package:vegetables_app_training_ui/bloc/selected_category_cubit.dart';
import 'package:vegetables_app_training_ui/components/category_cards.dart';
import 'package:vegetables_app_training_ui/components/notification_icon.dart';
import 'package:vegetables_app_training_ui/components/product_card.dart';
import 'package:vegetables_app_training_ui/components/profile_image.dart';
import 'package:vegetables_app_training_ui/components/search_field.dart';
import 'package:vegetables_app_training_ui/data/product.dart';
import 'package:vegetables_app_training_ui/utils/colors.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<SelectedCategoryCubit>(
            create: (BuildContext context) => SelectedCategoryCubit(),
          ),
          BlocProvider<CategoriesCubit>(
            create: (BuildContext context) => CategoriesCubit(),
          ),
        ],
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: Icon(
                  Icons.menu,
                  color: black,
                ),
                title: Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      'MoonShops',
                      style: TextStyle(color: black),
                    )),
                actions: [
                  NotificationIcon(),
                  ProfileImage(),
                ],
              ),
              SliverToBoxAdapter(
                child: SearchField(),
              ),
              SliverToBoxAdapter(
                child: CategoryCards(),
              ),
              SliverToBoxAdapter(
                child: ProductCard(product: Product()),
              ),
//              ItemsSection(),
            ],
          ),
        ),
      );
}
