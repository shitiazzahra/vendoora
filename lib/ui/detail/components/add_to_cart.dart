import 'package:e_commers/consts.dart';
import 'package:e_commers/models/product.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: defaultPadding),
            height: 50,
            width: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: product.color,
              )
            ),
            child: IconButton(
              onPressed: () {}, 
              icon: const Icon(Icons.add_shopping_cart)
            ),
          ),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: product.color,
                maximumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)
                )
              ),
              onPressed: () {}, 
              child: const Text(
                "Buy Now",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}