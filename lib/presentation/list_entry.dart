import 'package:flutter/material.dart';
import 'package:simple_beautiful_shopping_list/models/product.dart';
import 'package:simple_beautiful_shopping_list/presentation/cart_button.dart';
import 'package:simple_beautiful_shopping_list/presentation/list_entry_information.dart';

class ListEntry extends StatelessWidget {
  const ListEntry({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 92, 134, 189),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 24),
          ListEntryInformation(
            name: product.name,
            price: product.price,
          ),
          const Spacer(),
          const CartButton(),
        ],
      ),
    );
  }
}
