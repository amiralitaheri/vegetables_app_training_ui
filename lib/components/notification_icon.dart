import 'package:flutter/material.dart';
import 'package:vegetables_app_training_ui/utils/colors.dart';

class NotificationIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8),
        child: Stack(children: [
          Icon(
            Icons.notifications_none,
            color: black,
          ),
          Positioned(
            top: 2,
            right: 5,
            child: SizedBox(
              height: 8,
              width: 8,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  color: red,
                ),
              ),
            ),
          )
        ]),
      );
}
