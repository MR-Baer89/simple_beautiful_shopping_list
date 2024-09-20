import 'package:flutter/material.dart';
import 'package:simple_beautiful_shopping_list/models/product.dart';
import 'package:simple_beautiful_shopping_list/presentation/list_entry.dart';

class SeparatedListViewListContent extends StatelessWidget {
  const SeparatedListViewListContent({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ListEntry(product: products[index]);
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
    );
  }
}
