import 'dart:html';

import 'package:flutter/material.dart';
import 'package:rupa/component/header.dart';
import 'package:rupa/constants.dart';
import 'package:rupa/modal/product.dart';

class SalesScreen extends StatefulWidget {
  const SalesScreen({Key key}) : super(key: key);

  @override
  _SalesScreenState createState() => _SalesScreenState();
}

class _SalesScreenState extends State<SalesScreen> {
  ProductResponse product;

  @override
  Widget build(BuildContext context) {
    TextEditingController productController = TextEditingController();
    TextEditingController quantityController = TextEditingController();
    TextEditingController priceController = TextEditingController();

    void addProduct() {
      setState(() {
        product.productName = productController.value.text;
        product.price = int.parse(priceController.value.text);
        product.quantity = int.parse(quantityController.value.text);
      });

      print(product);
    }

    return Container(
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Header(title: "Sales", showSearch: false),
              SizedBox(
                height: defaultPadding,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Product"),
                          TextField(
                              controller: productController,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10))),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: defaultPadding * 2,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Quantity"),
                          TextField(
                              controller: quantityController,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10))),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: defaultPadding * 2,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Price"),
                          TextField(
                              controller: priceController,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10))),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: defaultPadding),
                      child: ElevatedButton(
                          child: Text(
                            "Add",
                          ),
                          style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                      EdgeInsets.symmetric(
                                          vertical: defaultPadding,
                                          horizontal: defaultPadding * 2)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  secondaryColor),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(defaultPadding),
                                      side: BorderSide(color: secondaryColor)))),
                          onPressed: () => {addProduct()}),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
