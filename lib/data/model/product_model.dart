class ProductModel {
  int id = 0;
  String name = "";
  String description = "";
  double price = 0;
  String imageUrl = "";
  bool isFavorite = false;
  int numberInStock = 0;
  int cartCount = 0;

  ProductModel();

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json["id"] ?? 0;
    name = json["name"] ?? "";
    description = json["description"] ?? "";
    imageUrl = json["image"] ?? "";
    price = json["price"] ?? 0;
    numberInStock = json["stock"] ?? 0;
  }
}
