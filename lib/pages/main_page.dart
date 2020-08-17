import 'package:flutter/material.dart';
import 'package:vegetables_app_training_ui/components/notification_icon.dart';
import 'package:vegetables_app_training_ui/components/profile_image.dart';
import 'package:vegetables_app_training_ui/components/search_field.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: Icon(Icons.menu),
              title: Padding(
                  padding: EdgeInsets.only(left: 5), child: Text('MoonShops')),
              actions: [
                NotificationIcon(),
                ProfileImage(),
              ],
            ),
            SliverToBoxAdapter(
              child: SearchField(),
            )
//              CategoriesCards(),
//              ItemsSection(),
          ],
        ),
      );
}
