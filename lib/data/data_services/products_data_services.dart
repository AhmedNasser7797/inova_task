import 'dart:developer';

import 'package:flutter/services.dart' show rootBundle;

class ProductsDataServices {
  Future<String> getAllProducts() async {
    try {
      var jsonData = await rootBundle.loadString('assets/data/data.json');
      // var decodeData = json.decode(jsonData);
      // print("jsonData ${decodeData.runtimeType}");
      //
      // print("jsonData ${decodeData}");
      return jsonData;
    } catch (e, s) {
      log(e.toString());
      log(s.toString());
      return "";
    }
  }
}
