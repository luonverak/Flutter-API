import 'package:flutter/material.dart';

import '../model/product_model.dart';

Widget productData(ProductModel model) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            offset: Offset(5, 5),
            color: Colors.grey,
            blurRadius: 5,
          )
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 170,
            child: Image.network(
              model.image,
              alignment: Alignment.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            model.title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
          ),
        ],
      ),
    ),
  );
}
