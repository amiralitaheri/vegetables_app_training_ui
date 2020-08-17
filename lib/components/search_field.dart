import 'package:flutter/material.dart';
import 'package:vegetables_app_training_ui/utils/colors.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: SizedBox(
                height: 50,
                width: 310,
                child: TextField(
                  style: TextStyle(color: darkGrey),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: searchBackground,
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(1000),
                        )),
                    labelText: 'Search here...',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: SizedBox(
                height: 50,
                width: 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: EdgeInsets.all(0),
                  onPressed: () => {},
                  color: background,
                  child: Center(
                      child: Container(
                    child: Icon(
                      Icons.tune,
                      color: black,
                    ),
                  )),
                ),
              ),
            ),
          ],
        ),
      );
}
