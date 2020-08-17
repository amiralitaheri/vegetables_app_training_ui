import 'package:flutter/material.dart';
import 'package:vegetables_app_training_ui/utils/colors.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        child: Row(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Search',
              ),
            ),
            SizedBox(
              height: 50,
              width: 50,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                ),
                padding: EdgeInsets.all(0),
                onPressed: () => {},
                color: lightGrey,
                child: Center(
                    child: Container(
                      child: Icon(
                  Icons.filter_list,
                  color: black,
                ),
                    )),
              ),
            ),
          ],
        ),
      );
}
