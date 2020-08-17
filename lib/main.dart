import 'package:flutter/material.dart';
import 'package:vegetables_app_training_ui/pages/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: (){
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: MaterialApp(
          title: 'Vegetables App',
          theme: ThemeData(
//        scaffoldBackgroundColor: Colors.grey,
            fontFamily: 'roboto',
            primarySwatch: Colors.green,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: MainPage(),
        ),
      );
}
