import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inova_task/data/model/product_model.dart';
import 'package:inova_task/presentation/widgets/custom_image.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomNetworkImage(image: product.imageUrl, height: 100),
        const SizedBox(
          height: 8,
        ),
        Text(
          product.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          product.description,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            const Text("Price"),
            const SizedBox(
              width: 8,
            ),
            Text(product.price.toString()),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
