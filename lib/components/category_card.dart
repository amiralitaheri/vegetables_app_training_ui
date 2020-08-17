import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vegetables_app_training_ui/utils/colors.dart';

class CategoryCard extends StatelessWidget {
  final bool isSelected;
  final String name;
  final IconData icon;
  final int index;

  CategoryCard(
      {this.icon = Icons.wb_sunny,
      this.name = 'sunny',
      this.isSelected = true,
      this.index = 0,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(13)),
                color: isSelected ? green : background,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    icon,
                    color: isSelected ? Colors.white : black,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        color: isSelected ? Colors.white : black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ]),
      );
}
