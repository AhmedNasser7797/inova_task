import 'dart:convert';

import 'package:inova_task/data/model/product_model.dart';

import '../data_services/products_data_services.dart';

class ProductsRepository {
  final ProductsDataServices charactersWebServices;

  ProductsRepository(this.charactersWebServices);

  Future<List<ProductModel>> getAllCharacters() async {
    final data = await charactersWebServices.getAllProducts();
    print(data);
    var products = json.decode(data);
    print(products);
    List<ProductModel> temp = [];
    for (var element in products) {
      temp.add(ProductModel.fromJson(element));
    }
    return temp;
  }
}
