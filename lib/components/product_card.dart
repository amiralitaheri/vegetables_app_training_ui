import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vegetables_app_training_ui/data/product.dart';
import 'package:vegetables_app_training_ui/utils/colors.dart';
import 'package:vegetables_app_training_ui/utils/extentions.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({
    this.product,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(16),
    child: Stack(
          children: [
            SizedBox(
              width: 200,
              height: 267,
              child: Container(
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 267,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.name,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: black,
                          ),
                        ),
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1000),
                            ),
                            padding: EdgeInsets.all(0),
                            onPressed: () => {},
                            color: lightGrey,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Made in\n Iran',
                              style: TextStyle(
                                fontSize: 17,
                                color: darkGrey.withOpacity(0.7),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: yellow,
                                  size: 17,
                                ),
                                Text(
                                  '${product.score}',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: darkGrey.withOpacity(0.7),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Text(
                                    '\$ ${product.price}',
                                    style: TextStyle(
                                      color: green,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '${product.weight} kg',
                                    style: TextStyle(
                                      color: green,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1000),
                            ),
                            padding: EdgeInsets.all(0),
                            onPressed: () => {},
                            color: lightGrey,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 267,
              height: 267,
              child: Align(
                alignment: FractionalOffset(1, 0.5),
                child: Image(
                  width: 130,
                  height: 130,
                  image: AssetImage(
                      'assets/images/products/${product.name.slug()}.png'),
                ),
              ),
            )
          ],
        ),
  );
}
