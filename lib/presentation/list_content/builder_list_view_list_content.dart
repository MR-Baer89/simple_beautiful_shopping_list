import 'package:flutter/material.dart';
import 'package:simple_beautiful_shopping_list/models/product.dart';

class BuilderListViewListContent extends StatelessWidget {
  const BuilderListViewListContent({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return ListTile(
          title: Text(product.name),
          subtitle: Text('Preis: \$${product.price}'),
          trailing: Text('\$${product.price}'),
        );
      },
    );
  }
}
