import 'package:flutter/material.dart';
import 'package:rest_api/controller/product_controller.dart';
import 'package:rest_api/model/product_model.dart';

import '../widget/product_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ProductModel> list = [];

  getProduct() async {
    list = await ProductController().getProduct();
  }

  @override
  void initState() {
    getProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch API'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1 / 1.3,
        children: List.generate(
          list.length,
          (index) => productData(
            list[index],
          ),
        ),
      ),
    );
  }
}
